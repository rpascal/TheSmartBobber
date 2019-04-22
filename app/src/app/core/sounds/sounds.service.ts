import { Injectable } from '@angular/core';
import { NativeAudio } from '@ionic-native/native-audio/ngx';
import { Platform } from '@ionic/angular';
import { BehaviorSubject } from 'rxjs';
import { first } from 'rxjs/operators';

import { CoreModule } from '../core.module';
import { LogsService } from '../logs-service/logs.service';
import { StorageService } from '../storage/storage.service';

interface Sound {
  key: string;
  // asset: string;
  play: () => void;
}

@Injectable({
  providedIn: CoreModule
})
export class SoundsService {
  private readonly sound_uid = "sound_uid";
  active = new BehaviorSubject<boolean>(true);

  private sounds: Sound[] = [];
  private forceWeb = true;

  constructor(
    private platform: Platform,
    private nativeAudio: NativeAudio,
    private log: LogsService,
    private storage: StorageService
  ) {
    this.preload("bell", "assets/audio/bell.mp3");
    this.appLoad();
  }

  async appLoad() {
    try {
      const value = await this.storage.getBoolean(this.sound_uid);
      this.active.next(value);
    } catch {
      this.setActive(true);
    }
  }
  setActive(value: boolean) {
    this.active.next(value);
    this.storage.set(this.sound_uid, value);
  }

  bell() {
    const soundToPlay = this.sounds.find(sound => {
      return sound.key === "bell";
    });
    if (soundToPlay) {
      this.play("bell");
    } else {
      this.preload("bell", "assets/audio/bell.mp3");
    }
  }

  preload(key: string, asset: string): void {
    if (this.platform.is("cordova") && !this.forceWeb) {
      this.nativeAudio.preloadSimple(key, asset);

      this.sounds.push({
        key: key,
        play: async () => {
          try {
            await this.nativeAudio.play(key);
          } catch (err) {
            this.log.addError(`Error playing audio ${err}`, SoundsService.name);
          }
        }
      });
    } else {
      const audio = new Audio(asset);
      let retryOnce = true;
      this.sounds.push({
        key: key,
        play: async () => {
          try {
            await audio.play();
            retryOnce = true;
          } catch (err) {
            this.log.addError(`Error playing audio ${err}`, SoundsService.name);
            if (retryOnce) {
              setTimeout(() => this.play(key), 10);
              retryOnce = false;
            } else {
              retryOnce = true;
            }
          }
        }
      });
    }
  }

  play(key: string): void {
    this.active.pipe(first()).subscribe(value => {
      this.log.addMessage(`Attempting to play:${key} with value ${value}`)
      if (value) {
        const soundToPlay = this.sounds.find(sound => {
          return sound.key === key;
        });
        soundToPlay.play();
      }

      // if (!value) {
      //   this.preload("bell", "assets/audio/bell.mp3");
      // }
      // const soundToPlay = this.sounds.find(sound => {
      //   return sound.key === key;
      // });
      // soundToPlay.play();

    });
  }
}
