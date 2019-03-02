import { Injectable } from '@angular/core';
import { Plugins } from '@capacitor/core';
import { Platform } from '@ionic/angular';
import { BehaviorSubject } from 'rxjs';
import { first } from 'rxjs/operators';

import { CoreModule } from '../core.module';
import { StorageService } from '../storage/storage.service';

const { Haptics } = Plugins;

@Injectable({
  providedIn: CoreModule
})
export class VibrationService {
  private readonly vibration_uid = "vibration_uid";
  active = new BehaviorSubject<boolean>(true);

  constructor(private platform: Platform, private storage: StorageService) {
    this.appLoad();
  }

  async appLoad() {
    try {
      const value = await this.storage.getBoolean(this.vibration_uid);
      this.active.next(value);
    } catch {
      this.setActive(true);
    }
  }

  setActive(value: boolean) {
    this.active.next(value);
    this.storage.set(this.vibration_uid, value);
  }

  single() {
    if (this.platform.is("capacitor")) {
      this.active.pipe(first()).subscribe(value => {
        if (value) {
          Haptics.vibrate();
        }
      });
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
