import { Injectable } from '@angular/core';
import { Plugins } from '@capacitor/core';
import { Platform } from '@ionic/angular';

import { CoreModule } from '../core.module';

const { Haptics } = Plugins;

@Injectable({
  providedIn: CoreModule
})
export class VibrationService {

  active = true;

  constructor(private platform: Platform) {}

  single() {
    if (this.platform.is("capacitor") && this.active) {
      Haptics.vibrate();
    }
  }

  triple() {
    for (let i = 0; i < 4; i++) {
      setTimeout(() => {
        this.single();
      }, i * 250);
    }
  }
}
