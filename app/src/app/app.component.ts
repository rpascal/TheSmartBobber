import { Component, OnInit } from '@angular/core';
import { Plugins } from '@capacitor/core';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { Platform } from '@ionic/angular';

import { FirebaseService, TheBobberService } from './core';

const { SplashScreen } = Plugins;

@Component({
  selector: "app-root",
  templateUrl: "app.component.html"
})
export class AppComponent implements OnInit {
  constructor(
    private platform: Platform,
    private statusBar: StatusBar,
    private bobber: TheBobberService,
    private fb: FirebaseService
  ) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(async () => {
      if (this.platform.is("cordova") || this.platform.is("capacitor")) {
        this.statusBar.styleDefault();
        try {
          await SplashScreen.hide();
        } catch (err) {
          console.log(err);
        }
      }
    });
  }

  ngOnInit() {
    this.bobber.connect();
  }
}
