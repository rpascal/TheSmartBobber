import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { Observable, Subject } from 'rxjs';
import { map, takeUntil, tap } from 'rxjs/operators';

import { environment } from '../../../environments/environment';
import { BluetoothSerialService } from '../bluetooth-serial/bluetooth-serial.service';
import { CoreModule } from '../core.module';
import { FirebaseService } from '../firebase/firebase.service';
import { LogsService } from '../logs-service/logs.service';
import { ToastService } from '../toast/toast.serivce';
import { VibrationService } from '../vibration/vibration.service';

@Injectable({
  providedIn: CoreModule
})
export class TheBobberService extends BluetoothSerialService {
  private readonly END_DEL = "&";
  private readonly TEMP_DEL = "#";
  private readonly BITE_DEL = "@";
  private readonly ADDRESS = "00:06:66:ED:FA:72";

  private takeUntilBobber: Subject<void>;

  private tempSubject = new Subject<string>();
  temps$: Observable<number>;
  private biteSubject = new Subject<string>();
  bite$: Observable<number>;

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
    private vibration: VibrationService
  ) {
    super(bls, router, toastService, zone, logsService);

    this.tempSubject
      .pipe(
        this.cleanUpMap(this.TEMP_DEL),
        this.toNumMap(),
        this.fb.tempTap(),
        this.logsService.tempTap(`${TheBobberService.name} - Temp Data`)
      )
      .subscribe(data => {});

    this.biteSubject
      .pipe(
        this.cleanUpMap(this.BITE_DEL),
        this.toNumMap(),
        this.fb.biteTap(),
        tap(data => {
          if (data === environment.bitePeak) {
            this.vibration.triple();
          }
        }),
        this.logsService.tempTap(`${TheBobberService.name} - Bite Data`)
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
      .pipe(
        takeUntil(this.takeUntilBobber),
        this.logsService.tempTap(`${TheBobberService.name} - Data Line From &`)
      )
      .subscribe((data: string) => {
        if (data.includes(this.TEMP_DEL)) {
          this.tempSubject.next(data);
        }
        if (data.includes(this.BITE_DEL)) {
          this.biteSubject.next(data);
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
