import { Injectable } from '@angular/core';
import { Plugins } from '@capacitor/core';
import { Platform } from '@ionic/angular';
import { BehaviorSubject } from 'rxjs';

import { CoreModule } from '../core.module';

const { Network } = Plugins;

@Injectable({
  providedIn: CoreModule
})
export class NetworkService {
  status = new BehaviorSubject<boolean>(false);

  constructor(private platform: Platform) {
    this.init();
  }

  private init() {
    this.platform.ready().then(async () => {
      if (this.platform.is("cordova") || this.platform.is("capacitor")) {
        Network.addListener("networkStatusChange", status => {
          this.status.next(status.connected);
        });
        const currentStatus = await Network.getStatus();
        this.status.next(currentStatus.connected);
      } else {
        this.status.next(true);
      }
    });
  }
}
