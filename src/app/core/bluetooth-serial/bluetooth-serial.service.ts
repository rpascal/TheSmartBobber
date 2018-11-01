import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, Subscription } from 'rxjs';
import { finalize, tap } from 'rxjs/operators';

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
    private toastService: ToastService
  ) {}

  discoverUnpaired(): Promise<IDevice[]> {
    return this.bls.discoverUnpaired();
  }

  list(): Promise<any> {
    return this.bls.list();
  }

  connect(macAddress_or_uuid: string) {
    if (!this.connectionStatus || !this.connecting) {
      this.connecting = true;
      this.connectingSubject.next(true);
      this.BluetoothSerialConnect$ = this.bls
        .connect(macAddress_or_uuid)
        .pipe(
          tap(() => {
            this.connectionStatus = true;
            this.connectionStatusSubject.next(true);
          }),
          finalize(() => {
            console.log("finalize connect");
            this.connecting = false;
            this.connectingSubject.next(false);
          })
        )
        .subscribe(
          connected => {
            this.toastService.message("Connected!");
            this.router.navigate(["/"]);
            console.log("Connected!", connected);
          },
          err => {
            this.BluetoothSerialConnect$.unsubscribe();
          }
        );
    }
  }

  subscribe(dilimeter: string): Observable<any> {
    return this.bls.subscribe(dilimeter);
  }

  write(data): Promise<any> {
    return this.bls.write(data);
  }
}
