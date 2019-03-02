import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { NativeAudio } from '@ionic-native/native-audio/ngx';
import { Observable, Subject, timer } from 'rxjs';

import { environment } from '../../environments/environment';
import { IDevice } from './bluetooth-serial/bluetooth-serial.service';

class BluetoothSerialMock extends BluetoothSerial {
  connect(macAddress_or_uuid: string): Observable<any> {
    // return throwError('Valid token not returned');
    return timer(1000); // of(true);
  }

  write(data: any): Promise<any> {
    return new Promise((resolve, reject) => {
      resolve("OK");
    });
  }
  discoverUnpaired(): Promise<any> {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        const mock: IDevice[] = [
          {
            class: 12,
            id: "id_1",
            address: "address_1",
            name: "name_1_bobber"
          },
          {
            class: 22,
            id: "id_2",
            address: "address_2",
            name: "name_2"
          }
        ];

        resolve(mock);
      }, 5000);
    });
  }

  subscribe(dilimeter: string): Observable<any> {
    const mock = new Subject<string>();
    const TEMP_DEL = "#";
    const BITE_DEL = "@";
    const SOLENOID_DELIMETER = "*";

    // setInterval(() => {
    //   let mes = Math.random() > 0.5 ? TEMP_DEL : BITE_DEL;
    //   mes += Math.floor(Math.random() * 11).toString();
    //   // console.log("MOCK", mes);
    //   mock.next(mes);
    // }, 250);

    setInterval(() => {
      const getRandomArbitrary = (min, max) => {
        return Math.random() * (max - min) + min;
      };
      let mes = BITE_DEL;
      mes += getRandomArbitrary(
        environment.biteMin,
        environment.bitePeak
      ).toString();

      mock.next(mes);
    }, 10);

    // let i = 0;
    // setInterval(() => {
    //   mock.next((++i).toString());
    // }, 100);

    // setInterval(() => {
    //   mock.next(`${SOLENOID_DELIMETER}1`);
    // }, 5000);

    return mock.asObservable();
  }
}

export class CoreProviders {
  public static getProviders() {
    const providers = [];

    if (!window.hasOwnProperty("cordova")) {
      // Use browser providers
      providers.push({
        provide: BluetoothSerial,
        useClass: BluetoothSerialMock
      });
    } else {
      // Use device providers
      providers.push(BluetoothSerial);
    }
    providers.push(NativeAudio);

    return providers;
  }
}
