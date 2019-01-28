import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { Observable, Subject } from 'rxjs';
import { map, takeUntil } from 'rxjs/operators';

import { BluetoothSerialService } from '../bluetooth-serial/bluetooth-serial.service';
import { CoreModule } from '../core.module';
import { FirebaseService } from '../firebase/firebase.service';
import { LogsService } from '../logs-service/logs.service';
import { ToastService } from '../toast/toast.serivce';

@Injectable({
  providedIn: CoreModule
})
export class TheBobberService extends BluetoothSerialService {
  private readonly END_DEL = "&";
  private readonly TEMP_DEL = "#";
  private readonly BITE_DEL = "@";
  private readonly ADDRESS = "00:06:66:ED:FA:72";

  private takeUntil = new Subject();

  private tempSubject = new Subject<string>();
  private biteSubject = new Subject<string>();

  private cleanUpMap = (char: string) =>
    map((data: string) => data.replace(char, ""));

  constructor(
    bls: BluetoothSerial,
    router: Router,
    toastService: ToastService,
    zone: NgZone,
    logsService: LogsService,
    private fb: FirebaseService
  ) {
    super(bls, router, toastService, zone, logsService);
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
    this.takeUntil = new Subject();

    this.listenForData()
      .pipe(takeUntil(this.takeUntil))
      .subscribe((data: string) => {
        if (data.includes(this.TEMP_DEL)) {
          this.tempSubject.next(data);
        }
        if (data.includes(this.BITE_DEL)) {
          this.biteSubject.next(data);
        }

        this.logsService.addMessage(
          data,
          TheBobberService.name + "Data Line From &"
        );
      });

    this.tempSubject
      .pipe(
        this.cleanUpMap(this.TEMP_DEL),
        this.fb.tempTap(),
        takeUntil(this.takeUntil)
      )
      .subscribe(data => {
        this.logsService.addMessage(
          data,
          `${TheBobberService.name} - Temp Data`
        );
      });

    this.biteSubject
      .pipe(
        this.cleanUpMap(this.BITE_DEL),
        this.fb.biteTap(),
        takeUntil(this.takeUntil)
      )
      .subscribe(data => {
        this.logsService.addMessage(
          data,
          `${TheBobberService.name} - Bite Data`
        );
      });
  }

  onDisconnect(): void {
    this.takeUntil.next();
    this.takeUntil.complete();
    delete this.takeUntil;
  }
}
