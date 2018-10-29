import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { CameraResultType, CameraSource, Plugins } from '@capacitor/core';

import { BluetoothLEService } from '../../core/bluetooth-le/bluetooth-le.service';

// import '@ionic/pwa-elements';
@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements OnInit {
  image: any;
  whatever: any;

  constructor(
    private sanitizer: DomSanitizer,
    private ble: BluetoothLEService
  ) {}

  public ngOnInit() {
    console.log("On init realtime");

    this.ble
      .startScan()
      // .pipe(throwError(err => console.log(err)))
      .subscribe(
        data => {
          this.whatever = data;
          console.log(data);
        },
        err => {
          this.whatever = err;
          console.log(err);
        }
      );
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
