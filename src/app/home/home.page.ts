// import '@ionic/pwa-elements';
import { Component } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { CameraResultType, CameraSource, Plugins } from '@capacitor/core';


@Component({
  selector: "app-home",
  templateUrl: "home.page.html",
  styleUrls: ["home.page.scss"]
})
export class HomePage {
  image: any;

  constructor(private sanitizer: DomSanitizer) {}

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
