import { Component, OnInit } from '@angular/core';
import { Plugins } from '@capacitor/core';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { Platform } from '@ionic/angular';

import { TheBobberService } from './core';

const { SplashScreen } = Plugins;

@Component({
  selector: "app-root",
  templateUrl: "app.component.html"
})
export class AppComponent implements OnInit {
  constructor(
    private platform: Platform,
    private statusBar: StatusBar,
    private bobber: TheBobberService
  ) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(async () => {
      this.statusBar.styleDefault();
      try {
        await SplashScreen.hide();
      } catch (err) {
        console.log(err);
      }
    });
  }

  ngOnInit() {
    this.bobber.connect();
  }
}
