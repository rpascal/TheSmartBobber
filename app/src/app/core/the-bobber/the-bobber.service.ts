import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, Subject } from 'rxjs';
import { map, takeUntil, tap } from 'rxjs/operators';

import { BluetoothSerialService } from '../bluetooth-serial/bluetooth-serial.service';
import { CoreModule } from '../core.module';
import { FirebaseService } from '../firebase/firebase.service';
import { LogsService } from '../logs-service/logs.service';
import { SoundsService } from '../sounds/sounds.service';
import { StorageService } from '../storage/storage.service';
import { ToastService } from '../toast/toast.serivce';
import { VibrationService } from '../vibration/vibration.service';

@Injectable({
  providedIn: CoreModule
})
export class TheBobberService extends BluetoothSerialService {
  private readonly led_uid = "led_uid";
  private readonly autohook_uid = "autohook_uid";

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

  led = new BehaviorSubject<boolean>(false);
  autohook = new BehaviorSubject<boolean>(true);

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
    private vibration: VibrationService,
    protected storage: StorageService
  ) {
    super(bls, router, toastService, zone, logsService, storage);

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
    this.appLoad();

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
    this.requestTemp();
  }

  requestTemp() {
    this.write("2");
  }

  onDisconnect(): void {
    if (this.takeUntilBobber) {
      this.takeUntilBobber.next();
      this.takeUntilBobber.complete();
      delete this.takeUntilBobber;
    }
  }

  async appLoad() {
    try {
      const value = await this.storage.getBoolean(this.led_uid);
      console.log("LEd" , value);
      this.led.next(value);
    } catch {
      console.log("autohook" , false);

      this.setLED(false);
    }

    try {
      const value = await this.storage.getBoolean(this.autohook_uid);
      console.log("autohook" , value);
      this.autohook.next(value);
    } catch {
      console.log("autohook" , true);

      this.setAutohook(true);
    }
  }

  async setLED(value: boolean) {
    this.led.next(value);
    this.storage.set(this.led_uid, value);

    try {
      const result = await this.write(value ? "1" : "0");
      this.logsService.addMessage(result, BluetoothSerialService.name);
    } catch (err) {
      this.logsService.addError(err);
    }
  }

  async setAutohook(value: boolean) {
    this.autohook.next(value);
    this.storage.set(this.autohook_uid, value);

    try {
      const result = await this.write("4");
      this.logsService.addMessage(result, BluetoothSerialService.name);
    } catch (err) {
      this.logsService.addError(err);
    }
  }
}
