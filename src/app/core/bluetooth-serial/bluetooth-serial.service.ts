import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, Subscription } from 'rxjs';

import { environment } from '../../../environments/environment';
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
    private toast: ToastService,
    private zone: NgZone
  ) { }

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

      // this.subscribeRaw().subscribe(data => {
      //   this.toast.message(`SERVICE RAW: ${data}`);
      // });
      this.BluetoothSerialConnect$ = this.bls
        .connect(macAddress_or_uuid)
        .subscribe(
          connected => {


            this.updateConnection(true);
            // this.toastService.message(
            //   `Connected to device: ${macAddress_or_uuid}`
            // );
            this.router.navigateByUrl(environment.realTimePage);
            this.updateConnecting(false);
          },
          err => {
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

  write(data): Promise<any> {
    return this.bls.write(data);
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
