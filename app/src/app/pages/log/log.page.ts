import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { CameraResultType, CameraSource, Plugins } from '@capacitor/core';
import { Observable } from 'rxjs';
import { tap } from 'rxjs/operators';

import { FirebaseService, ILogDatabase } from '../../core';

@Component({
  selector: "app-log",
  templateUrl: "log.page.html",
  styleUrls: ["log.page.scss"]
})
export class LogPage implements OnInit {
  image: any;
  logs$: Observable<ILogDatabase[]>;
  constructor(private sanitizer: DomSanitizer, private fb: FirebaseService) {}

  ngOnInit() {
    this.logs$ = this.fb.getLogs().pipe(tap(data => console.log("Tap", data)));
  }

  trackHero(index, hero) {
    console.log(hero);
  }

  getAverage(arr: number[]) {
    console.log(arr);
    if (!arr) {
      return 0;
    }
    return arr.reduce((a, b) => a + b) / arr.length;
  }

  blah(log) {
    console.log(log);
  }

  async takePhoto() {
    try {
      const capturedImage = await Plugins.Camera.getPhoto({
        quality: 90,
        allowEditing: false,
        source: CameraSource.Camera,
        resultType: CameraResultType.Base64
      });
      this.image = this.sanitizer.bypassSecurityTrustResourceUrl(
        capturedImage && capturedImage.base64Data
      );
    } catch (err) {
      console.log(err);
    }
  }
}
