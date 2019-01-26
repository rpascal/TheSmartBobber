import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { Observable, of, Subject } from 'rxjs';

import { IDevice } from './bluetooth-serial/bluetooth-serial.service';

class BluetoothSerialMock extends BluetoothSerial {
  connect(macAddress_or_uuid: string): Observable<any> {
    // return throwError('Valid token not returned');
    return of(true);
  }

  write(data: any): Promise<any> {
    return new Promise((resolve, reject) => {
      resolve("OK");
    });
  }
  discoverUnpaired(): Promise<any> {
    return new Promise((resolve, reject) => {
      const mock: IDevice[] = [
        {
          class: 12,
          id: "id_1",
          address: "address_1",
          name: "name_1"
        },
        {
          class: 22,
          id: "id_2",
          address: "address_2",
          name: "name_2"
        }
      ];

      resolve(mock);
    });
  }

  subscribe(dilimeter: string): Observable<any> {
    const mock = new Subject<string>();

    return mock.asObservable();
  }
}

export class CoreProviders {
  public static getProviders() {
    const providers = [];

    if (document.URL.includes("https://") || document.URL.includes("http://")) {
      // Use browser providers
      providers.push({
        provide: BluetoothSerial,
        useClass: BluetoothSerialMock
      });
    } else {
      // Use device providers
      providers.push(BluetoothSerial);
    }

    return providers;
  }
}
