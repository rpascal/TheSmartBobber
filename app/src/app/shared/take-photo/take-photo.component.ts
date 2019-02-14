import { Component, OnInit } from '@angular/core';
import { ImageUploaderService } from '../../core/image-uploader/image-uploader.service';
import { Platform } from '@ionic/angular';

@Component({
  selector: 'app-take-photo',
  templateUrl: './take-photo.component.html',
  styleUrls: ['./take-photo.component.scss']
})
export class TakePhotoComponent implements OnInit {

  isCapacitor = false;

  constructor(private imageUploader: ImageUploaderService, private platform: Platform) { }


  ngOnInit() {
    this.isCapacitor = this.platform.is("capacitor");
  }

  takePhoto() {
    this.imageUploader.takePhoto();
  }

}
