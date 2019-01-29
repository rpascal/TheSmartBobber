import { FirestoreSettingsToken } from '@angular/fire/firestore';
import { RouteReuseStrategy } from '@angular/router';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { IonicRouteStrategy } from '@ionic/angular';

export class AppProviders {
  public static getProviders() {
    const providers = [
      StatusBar,
      { provide: RouteReuseStrategy, useClass: IonicRouteStrategy },
      { provide: FirestoreSettingsToken, useValue: {} }
    ];

    if (!window.hasOwnProperty("cordova")) {
    } else {
    }

    return providers;
  }
}
