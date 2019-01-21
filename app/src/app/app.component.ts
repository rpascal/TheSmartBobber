import { Component } from '@angular/core';
import { Plugins } from '@capacitor/core';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { Platform } from '@ionic/angular';

const { SplashScreen } = Plugins;

@Component({
  selector: "app-root",
  templateUrl: "app.component.html"
})
export class AppComponent {
  constructor(private platform: Platform, private statusBar: StatusBar) {
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
}
