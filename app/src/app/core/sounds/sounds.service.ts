import { Injectable } from '@angular/core';
import { NativeAudio } from '@ionic-native/native-audio/ngx';
import { Platform } from '@ionic/angular';

import { CoreModule } from '../core.module';

interface Sound {
  key: string;
  asset: string;
  isNative: boolean;
}

@Injectable({
  providedIn: CoreModule
})
export class SoundsService {
  active = true;

  private sounds: Sound[] = [];
  private audioPlayer: HTMLAudioElement = new Audio();
  private forceWebAudio = true;

  constructor(private platform: Platform, private nativeAudio: NativeAudio) {
    this.preload("bell", "assets/audio/bell.mp3");
  }

  bell() {
    this.play("bell");
  }

  preload(key: string, asset: string): void {
    if (this.platform.is("cordova") && !this.forceWebAudio) {
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
    if (this.active) {
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
  }
}
