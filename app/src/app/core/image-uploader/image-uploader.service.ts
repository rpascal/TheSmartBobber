import { Injectable } from '@angular/core';
import { CoreModule } from '../core.module';
import { Observable } from 'rxjs';
import { AngularFireStorage } from '@angular/fire/storage';
import { finalize } from 'rxjs/operators';
import { AngularFirestore } from '@angular/fire/firestore';
import { CameraResultType, CameraSource, Plugins, CameraPhoto } from '@capacitor/core';
import { DomSanitizer } from '@angular/platform-browser';
import { LogsService } from '../logs-service/logs.service';
import { FirebaseService } from '../firebase/firebase.service';
import { LoadingController } from '@ionic/angular';

@Injectable({
  providedIn: CoreModule
})
export class ImageUploaderService {

  uploadPercent: Observable<number>;
  downloadURL: Observable<string>;
  constructor(private storage: AngularFireStorage,
    private afs: AngularFirestore,
    private logger: LogsService,
    public loadingController: LoadingController,
    private fb: FirebaseService) { }

  async uploadFile(capturedImage: CameraPhoto) {

    const loading = await this.loadingController.create({
      message: "Uploading Image..."
    });
    await loading.present();


    try {
      const filePath = `${this.afs.createId()}.jpeg`;
      const fileRef = this.storage.ref(filePath);
      const task = fileRef.putString(capturedImage.base64Data.substring(23), 'base64', { contentType: 'image/jpeg' });
      this.uploadPercent = task.percentageChanges();
      this.uploadPercent.subscribe(x => loading.message = `Uploading Image... ${x.toFixed(2)}%-ish`, e => this.logger.addError(e, ImageUploaderService.name));

      task.snapshotChanges().pipe(
        finalize(() => {
          fileRef.getDownloadURL().subscribe(url => {
            this.fb.attachImage(url);
            loading.dismiss();
          })
        })
      )
        .subscribe()

    } catch (er) {
      await loading.dismiss();
      this.logger.addError(er, ImageUploaderService.name)
    }
  }



  async takePhoto() {
    try {
      const capturedImage = await Plugins.Camera.getPhoto({
        quality: 90,
        allowEditing: false,
        source: CameraSource.Camera,
        resultType: CameraResultType.Base64
      });
      await this.uploadFile(capturedImage);
    } catch (err) {
      this.logger.addError(err, ImageUploaderService.name);
    }
  }
}