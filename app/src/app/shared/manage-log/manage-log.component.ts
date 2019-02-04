import { Component, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { BehaviorSubject } from 'rxjs';

import { FirebaseService } from '../../core/firebase/firebase.service';
import { NewLogComponent } from './new-log/new-log.component';

@Component({
  selector: "app-manage-log",
  templateUrl: "./manage-log.component.html",
  styleUrls: ["./manage-log.component.scss"]
})
export class ManageLogComponent implements OnInit {
  activelyLogging: BehaviorSubject<boolean>;

  constructor(
    private fb: FirebaseService,
    public modalController: ModalController
  ) {}

  ngOnInit() {
    this.activelyLogging = this.fb.activelyLogging;
  }

  async startLog() {
    const modal = await this.modalController.create({
      component: NewLogComponent,
      // componentProps: { value: 123 }
    });
    return await modal.present();
    // this.fb.createNewLog();
  }

  endLog() {
    this.fb.endLog();
  }
}
