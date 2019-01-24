import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, Subscription } from 'rxjs';

import { environment } from '../../../environments/environment';
import { LogsService } from '../../shared/logs-overlay/logs-service/logs.service';
import { CoreModule } from '../core.module';
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
export class BluetoothSerialService {
  private BluetoothSerialConnect$: Subscription;

  private connectionStatusSubject = new BehaviorSubject<boolean>(false);
  private connectingSubject = new BehaviorSubject<boolean>(false);

  connectionStatus$ = this.connectionStatusSubject.asObservable();
  connecting$ = this.connectingSubject.asObservable();

  private connectionStatus = false;
  private connecting = false;

  constructor(
    private bls: BluetoothSerial,
    private router: Router,
    private toastService: ToastService,
    private zone: NgZone,
    private logsService: LogsService
  ) {}

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

  connect(macAddress_or_uuid: string) {
    if (!this.connectionStatus || !this.connecting) {
      this.updateConnecting(true);
      this.BluetoothSerialConnect$ = this.bls
        .connect(macAddress_or_uuid)
        .subscribe(
          connected => {
            this.logsService.addMessage(
              "Connected to bobber",
              BluetoothSerialService.name
            );
            this.updateConnection(true);

            this.router.navigateByUrl(environment.realTimePage);
            this.updateConnecting(false);
          },
          err => {
            this.logsService.addError(
              "Lost Connection/Failed to connect to bobber",
              BluetoothSerialService.name
            );

            this.updateConnection(false);

            this.toastService.error(
              `Failed to connect to device: ${macAddress_or_uuid}`
            );
            this.updateConnecting(false);
            this.BluetoothSerialConnect$.unsubscribe();
          }
        );
    }
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
