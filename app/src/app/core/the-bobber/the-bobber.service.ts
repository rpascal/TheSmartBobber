import { Injectable, NgZone } from '@angular/core';
import { CoreModule } from '../core.module';
import { BluetoothSerialService } from '../bluetooth-serial/bluetooth-serial.service';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { Router } from '@angular/router';
import { ToastService } from '../toast/toast.serivce';
import { LogsService } from '../logs-service/logs.service';
import { map, flatMap } from 'rxjs/operators';
import { Observable, Subject } from 'rxjs';

@Injectable({
  providedIn: CoreModule
})
export class TheBobberService extends BluetoothSerialService {

  private readonly END_DEL = "&";
  private readonly TEMP_DEL = '#';
  private readonly BITE = '@';

  private tempSubject = new Subject<string>();

  private cleanUpMap = (char: string) => map((data: string) => data.replace(char, ""));

  constructor(bls: BluetoothSerial,
    router: Router,
    toastService: ToastService,
    zone: NgZone,
    logsService: LogsService) {
    super(bls, router, toastService, zone, logsService);

  }

  private listenForData(): Observable<string> {
    return this.subscribe(this.END_DEL).pipe(this.cleanUpMap(this.END_DEL));
  }

  setupSubscriptions(): void {
    this.logsService.addMessage("Adding subscriptions", TheBobberService.name);

    this.listenForData().subscribe((data: string) => {

      if (data.includes(this.TEMP_DEL)) {
        this.tempSubject.next(data);
      }

      this.logsService.addMessage(data, TheBobberService.name + "Data Line From &");
    });

    this.tempSubject.pipe(this.cleanUpMap(this.TEMP_DEL)).subscribe(data => {
      this.logsService.addMessage(data, "Temp Data");
    })

  }




}
