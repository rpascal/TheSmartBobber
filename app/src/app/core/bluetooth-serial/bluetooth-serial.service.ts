import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, pipe, range, Subject, throwError, timer, UnaryFunction } from 'rxjs';
import { concat, map, mergeMap, retryWhen, take, takeUntil, tap, zip } from 'rxjs/operators';

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
  private connectionStatusMessage = new BehaviorSubject<
    "Connecting" | "Connected" | "Disconnected" | ""
  >("");

  private takeUntil: Subject<void>;

  connectionStatusMessage$ = this.connectionStatusMessage.asObservable();

  private connected = false;

  constructor(
    protected bls: BluetoothSerial,
    protected router: Router,
    protected toastService: ToastService,
    protected zone: NgZone,
    protected logsService: LogsService
  ) {}

  abstract onConnect(): void;
  abstract onDisconnect(): void;

  discoverUnpaired(): Promise<IDevice[]> {
    return this.bls.discoverUnpaired();
  }

  disconnect(err?: any) {
    this.takeUntil.next();
    this.takeUntil.complete();
    delete this.takeUntil;

    this.logsService.addError(err, BluetoothSerialService.name);
    this.connectionStatusMessage.next("Disconnected");
    this.connected = false;
    this.onDisconnect();
  }

  connect(macAddress_or_uuid: string) {
    this.takeUntil = new Subject();

    this.connectionStatusMessage.next("Connecting");

    this.logsService.addMessage(
      `Attempting to connect to ${macAddress_or_uuid}`,
      BluetoothSerial.name
    );
    if (!this.connected) {
      this.bls
        .connect(macAddress_or_uuid)
        .pipe(
          this.retryCall(),
          takeUntil(this.takeUntil)
        )
        .subscribe(
          connected => {
            this.logsService.addMessage(
              {
                Text: "Connected to bobber",
                data: connected
              },
              BluetoothSerialService.name
            );

            this.connectionStatusMessage.next("Connected");
            this.connected = true;
            this.onConnect();
          },
          err => this.disconnect(err)
        );
    }
  }

  subscribe(dilimeter: string): Observable<any> {
    return this.bls.subscribe(dilimeter);
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

  private retryCall<T>(
    maxTries: number = 4,
    waitTime: number = 250
  ): UnaryFunction<Observable<T>, Observable<T>> {
    return pipe(
      retryWhen(attempts =>
        range(1, maxTries).pipe(
          zip(attempts, x => x),
          tap(x => {
            if (console && console.error) {
              console.error(
                `Connection attempt #${x} failed, waiting ${x *
                  x *
                  waitTime}ms to try again`
              );
            }
          }),
          map(x => x * x),
          mergeMap(x => timer(x * waitTime)),
          take(maxTries),
          concat(
            throwError(`failed to connect to bobber after ${maxTries} attempts`)
          )
        )
      )
    );
  }
}
