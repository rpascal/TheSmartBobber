import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { Observable } from 'rxjs';
import { tap } from 'rxjs/operators';

import { FirebaseService, ILogDatabase } from '../../core';
import { ImageUploaderService } from '../../core/image-uploader/image-uploader.service';

@Component({
  selector: "app-log",
  templateUrl: "log.page.html",
  styleUrls: ["log.page.scss"]
})
export class LogPage implements OnInit {
  logs$: Observable<ILogDatabase[]>;
  constructor(private fb: FirebaseService, private imageUploader: ImageUploaderService) { }

  ngOnInit() {
    this.logs$ = this.fb.getLogs().pipe(tap(data => console.log("Tap", data)));
  }

  imageTake() {
    this.imageUploader.takePhoto();
  }


}
