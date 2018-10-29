import { Injectable } from '@angular/core';
import { BLE } from '@ionic-native/ble/ngx';
import { Observable } from 'rxjs';

import { CoreModule } from '../core.module';

@Injectable({
  providedIn: CoreModule
})
export class BluetoothLEService {
  constructor(private ble: BLE) {}

  startScan(services: string[] = []): Observable<any> {
    return this.ble.startScan(services);
  }
}
