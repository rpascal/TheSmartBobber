import { Component } from '@angular/core';
import { CameraResultType, CameraSource, Plugins } from '@capacitor/core';

@Component({
  selector: "app-home",
  templateUrl: "home.page.html",
  styleUrls: ["home.page.scss"]
})
export class HomePage {
  image: any;

  async takePhoto() {
    const capturedImage = await Plugins.Camera.getPhoto({
      quality: 90,
      allowEditing: true,
      source: CameraSource.Camera,
      resultType: CameraResultType.Uri
    });
    this.image = capturedImage.webPath;
  }
}
