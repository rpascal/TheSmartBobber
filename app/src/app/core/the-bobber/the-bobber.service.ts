import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { Observable, Subject } from 'rxjs';
import { map, takeUntil, tap } from 'rxjs/operators';

import { BluetoothSerialService } from '../bluetooth-serial/bluetooth-serial.service';
import { CoreModule } from '../core.module';
import { FirebaseService } from '../firebase/firebase.service';
import { LogsService } from '../logs-service/logs.service';
import { SoundsService } from '../sounds/sounds.service';
import { ToastService } from '../toast/toast.serivce';
import { VibrationService } from '../vibration/vibration.service';

@Injectable({
  providedIn: CoreModule
})
export class TheBobberService extends BluetoothSerialService {
  private readonly END_DEL = "&";
  private readonly TEMP_DEL = "#";
  private readonly BITE_DEL = "@";
  private readonly SOLENOID_DELIMETER = "*";

  private readonly ADDRESS = "00:06:66:ED:FA:72";

  private takeUntilBobber: Subject<void>;

  private tempSubject = new Subject<string>();
  temps$: Observable<number>;
  private biteSubject = new Subject<string>();
  bite$: Observable<number>;

  private solenoidSubject = new Subject<string>();
  solenoid$: Observable<number>;

  private cleanUpMap = (char: string) =>
    map((data: string) => data.replace(char, ""));
  private toNumMap = () => map((data: string) => +data);

  constructor(
    bls: BluetoothSerial,
    router: Router,
    toastService: ToastService,
    zone: NgZone,
    logsService: LogsService,
    private fb: FirebaseService,
    private sound: SoundsService,
    private vibration: VibrationService
  ) {
    super(bls, router, toastService, zone, logsService);

    this.tempSubject
      .pipe(
        this.cleanUpMap(this.TEMP_DEL),
        this.toNumMap(),
        this.fb.tempTap(),
        this.logsService.logTap(`${TheBobberService.name} - Temp Data`)
      )
      .subscribe(data => {});

    this.solenoidSubject
      .pipe(
        this.cleanUpMap(this.SOLENOID_DELIMETER),
        this.toNumMap(),
        this.fb.solenoidTap(),
        tap(data => {
          if (data === 1) {
            this.vibration.triple();
            this.sound.bell();
          }
        }),
        this.logsService.logTap(`${TheBobberService.name} - solenoid`)
      )
      .subscribe(data => {});

    this.biteSubject
      .pipe(
        this.cleanUpMap(this.BITE_DEL),
        this.toNumMap()
      )
      .subscribe(data => {});

    this.temps$ = this.tempSubject.asObservable().pipe(
      this.cleanUpMap(this.TEMP_DEL),
      this.toNumMap()
    );

    this.bite$ = this.biteSubject.asObservable().pipe(
      this.cleanUpMap(this.BITE_DEL),
      this.toNumMap()
    );

    this.solenoid$ = this.solenoidSubject.asObservable().pipe(
      this.cleanUpMap(this.SOLENOID_DELIMETER),
      this.toNumMap()
    );
  }

  private listenForData(): Observable<string> {
    return this.subscribe(this.END_DEL).pipe(this.cleanUpMap(this.END_DEL));
  }

  connect() {
    super.connect(this.ADDRESS);
  }

  connectViaAddress(address: string) {
    super.connect(address);
  }

  onConnect(): void {
    this.takeUntilBobber = new Subject();

    this.listenForData()
      .pipe(takeUntil(this.takeUntilBobber))
      .subscribe((data: string) => {
        if (data.includes(this.TEMP_DEL)) {
          this.tempSubject.next(data);
        } else if (data.includes(this.BITE_DEL)) {
          this.biteSubject.next(data);
        } else if (data.includes(this.SOLENOID_DELIMETER)) {
          this.solenoidSubject.next(data);
        } else {
          this.logsService.addMessage(data, TheBobberService.name);
        }
      });
  }

  onDisconnect(): void {
    if (this.takeUntilBobber) {
      this.takeUntilBobber.next();
      this.takeUntilBobber.complete();
      delete this.takeUntilBobber;
    }
  }
}
