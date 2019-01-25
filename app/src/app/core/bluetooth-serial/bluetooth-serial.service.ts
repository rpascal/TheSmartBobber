import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable } from 'rxjs';

import { environment } from '../../../environments/environment';
import { CoreModule } from '../core.module';
import { LogsService } from '../logs-service/logs.service';
import { ToastService } from '../toast/toast.serivce';

export interface IDevice {
  class: number;
  id: string;
  address: string;
  name: string;
}
@Injectable({
  providedIn: CoreModule
})
export abstract class BluetoothSerialService {
  private connectionStatusSubject = new BehaviorSubject<boolean>(false);
  private connectingSubject = new BehaviorSubject<boolean>(false);

  connectionStatus$ = this.connectionStatusSubject.asObservable();
  connecting$ = this.connectingSubject.asObservable();

  private connectionStatus = false;
  private connecting = false;

  constructor(
    protected bls: BluetoothSerial,
    protected router: Router,
    protected toastService: ToastService,
    protected zone: NgZone,
    protected logsService: LogsService
  ) {}

  abstract onConnect(): void;
  abstract onDisconnect(): void;

  fakeConnecting() {
    this.connectingSubject.next(true);
    setTimeout(() => {
      this.connectingSubject.next(false);
    }, 5000);
  }

  discoverUnpaired(): Promise<IDevice[]> {
    return this.bls.discoverUnpaired();
  }

  list(): Promise<any> {
    return this.bls.list();
  }

  connect(macAddress_or_uuid: string): Promise<void> {
    return new Promise((resolve, reject) => {
      this.logsService.addMessage(
        `Attempting to connect to ${macAddress_or_uuid}`,
        BluetoothSerial.name
      );
      if (!this.connectionStatus || !this.connecting) {
        this.updateConnecting(true);
        this.bls.connect(macAddress_or_uuid).subscribe(
          connected => {
            resolve();
            this.logsService.addMessage(
              {
                Text: "Connected to bobber",
                data: connected
              },
              BluetoothSerialService.name
            );
            this.updateConnection(true);
            this.updateConnecting(false);

            this.onConnect();

            this.router.navigateByUrl(environment.realTimePage);
          },
          err => {
            reject();
            this.logsService.addError(
              {
                Text: "Lost Connection/Failed to connect to bobber",
                err: err
              },
              BluetoothSerialService.name
            );

            this.updateConnection(false);
            this.updateConnecting(false);

            this.onDisconnect();

            this.router.navigateByUrl(environment.connectToBobberPage);
          }
        );
      }
    });
  }

  subscribe(dilimeter: string): Observable<any> {
    return this.bls.subscribe(dilimeter);
  }

  subscribeRaw(): Observable<any> {
    return this.bls.subscribeRawData();
  }

  write(data: any): Promise<any> {
    const str2ab = str => {
      const buf = new ArrayBuffer(str.length * 2); // 2 bytes for each char
      const bufView = new Uint16Array(buf);
      for (let i = 0, strLen = str.length; i < strLen; i++) {
        bufView[i] = str.charCodeAt(i);
      }
      return buf;
    };
    const writeData = str2ab(String(data));

    return this.bls.write(writeData);
  }

  private updateConnecting(status: boolean) {
    this.zone.run(() => {
      this.connecting = status;
      this.connectingSubject.next(status);
    });
  }

  private updateConnection(status: boolean) {
    this.zone.run(() => {
      this.connectionStatus = status;
      this.connectionStatusSubject.next(status);
    });
  }
}
