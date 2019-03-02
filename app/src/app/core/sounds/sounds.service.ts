import { Injectable } from '@angular/core';
import { NativeAudio } from '@ionic-native/native-audio/ngx';
import { Platform } from '@ionic/angular';
import { BehaviorSubject } from 'rxjs';
import { first } from 'rxjs/operators';

import { CoreModule } from '../core.module';
import { StorageService } from '../storage/storage.service';

interface Sound {
  key: string;
  asset: string;
  isNative: boolean;
}

@Injectable({
  providedIn: CoreModule
})
export class SoundsService {
  private readonly sound_uid = "sound_uid";
  active = new BehaviorSubject<boolean>(true);

  private sounds: Sound[] = [];
  private audioPlayer: HTMLAudioElement = new Audio();

  constructor(
    private platform: Platform,
    private nativeAudio: NativeAudio,
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
    this.play("bell");
  }

  preload(key: string, asset: string): void {
    if (this.platform.is("cordova")) {
      this.nativeAudio.preloadSimple(key, asset);

      this.sounds.push({
        key: key,
        asset: asset,
        isNative: true
      });
    } else {
      const audio = new Audio();
      audio.src = asset;

      this.sounds.push({
        key: key,
        asset: asset,
        isNative: false
      });
    }
  }

  play(key: string): void {
    this.active.pipe(first()).subscribe(value => {
      if (value) {
        const soundToPlay = this.sounds.find(sound => {
          return sound.key === key;
        });

        if (soundToPlay.isNative) {
          this.nativeAudio.play(soundToPlay.asset).then(
            res => {
              console.log(res);
            },
            err => {
              console.log(err);
            }
          );
        } else {
          this.audioPlayer.src = soundToPlay.asset;
          this.audioPlayer.play();
        }
      }
    });
  }
}
