import { Injectable } from '@angular/core';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, Subject, Subscription } from 'rxjs';
import { catchError } from 'rxjs/operators';

import { CoreModule } from '../core.module';

interface IDevice {
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

  private connectedSubject = new BehaviorSubject<boolean>(false);
  private connectingSubject = new BehaviorSubject<boolean>(false);
  private deviceDiscovered = new Subject<IDevice>();

  private connected = false;
  private connecting = false;

  constructor(private bls: BluetoothSerial) {
    this.bls
      .setDeviceDiscoveredListener()
      .pipe(
        catchError(err => {
          console.log(err);
          return null;
        })
      )
      .subscribe((device: IDevice) => {
        if (device) {
          console.log(device);
          this.deviceDiscovered.next(device);
        }
      });
  }

  discoverUnpaired(): Promise<IDevice[]> {
    return this.bls.discoverUnpaired();
  }

  startScan(): Observable<any> {
    return this.bls.setDeviceDiscoveredListener();
  }

  connect(macAddress_or_uuid: string): Observable<any> {
    if (!this.connected || !this.connecting) {
      this.connecting = true;
      this.connectingSubject.next(true);
      this.BluetoothSerialConnect$ = this.bls
        .connect(macAddress_or_uuid)
        .subscribe(
          connected => {
            this.connected = true;
            this.connectedSubject.next(true);
          },
          err => {
            this.connected = false;
            this.connectedSubject.next(false);
            this.BluetoothSerialConnect$.unsubscribe();
          },
          () => {
            this.connecting = false;
            this.connectingSubject.next(false);
          }
        );
    }

    return this.bls.connect(macAddress_or_uuid);
  }

  list(): Promise<any> {
    return this.bls.list();
  }

  subscribe(dilimeter: string): Observable<any> {
    return this.bls.subscribe(dilimeter);
  }

  setDiscoverable() {
    this.bls.setDiscoverable(60000);
  }

  write(data): Promise<any> {
    return this.bls.write(data);
  }
}
