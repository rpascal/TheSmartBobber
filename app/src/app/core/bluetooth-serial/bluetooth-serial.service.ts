import { Injectable, NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { BehaviorSubject, Observable, pipe, range, throwError, timer, UnaryFunction } from 'rxjs';
import { concat, map, mergeMap, retryWhen, take, tap, zip } from 'rxjs/operators';

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
  private connectionStatusMessage = new BehaviorSubject<string>("Nada");
  private connectingSubject = new BehaviorSubject<boolean>(false);

  connectionStatus$ = this.connectionStatusSubject.asObservable();
  connectionStatusMessage$ = this.connectionStatusMessage.asObservable();
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

  connect(macAddress_or_uuid: string) {
    this.connectionStatusMessage.next("Connecting");

    this.logsService.addMessage(
      `Attempting to connect to ${macAddress_or_uuid}`,
      BluetoothSerial.name
    );
    if (!this.connectionStatus || !this.connecting) {
      this.updateConnecting(true);
      this.bls
        .connect(macAddress_or_uuid)
        .pipe(this.retryCall())
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

            this.updateConnection(true);
            this.updateConnecting(false);

            this.onConnect();

           // this.router.navigateByUrl(environment.realTimePage);
          },
          err => {
            const errorMessage = this.connectionStatus
              ? "Lost connection"
              : "Couldn't connect";
            this.toastService.error(errorMessage);
            this.logsService.addError(
              {
                Text: errorMessage,
                err: err
              },
              BluetoothSerialService.name
            );

            this.updateConnection(false);
            this.updateConnecting(false);

            this.connectionStatusMessage.next("Disconnected");


            this.onDisconnect();

           // this.router.navigateByUrl(environment.connectToBobberPage);
          }
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

  private updateConnecting(status: boolean) {
    this.zone.run(() => {
      this.connecting = status;
      this.connectingSubject.next(status);
      // this.connectionStatusMessage.next(status ? "Connecting" : "");
    });
  }

  private updateConnection(status: boolean) {
    this.zone.run(() => {
      this.connectionStatus = status;
      this.connectionStatusSubject.next(status);
    });
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
