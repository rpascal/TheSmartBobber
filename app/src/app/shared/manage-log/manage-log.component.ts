import { Component, OnInit } from '@angular/core';
import { ActionSheetController, ModalController } from '@ionic/angular';
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
    public modalController: ModalController,
    public actionSheetController: ActionSheetController
  ) {}

  ngOnInit() {
    this.activelyLogging = this.fb.activelyLogging;
  }

  async startLog() {
    const modal = await this.modalController.create({
      component: NewLogComponent
    });
    return await modal.present();
  }

  async endLog() {
    const actionSheet = await this.actionSheetController.create({
      header: "End Trip?",
      buttons: [
        {
          text: "Yes",
          handler: async () => {
            await this.fb.endLog();
            actionSheet.dismiss();
          }
        },
        {
          text: "No",
          handler: () => {
            actionSheet.dismiss();
          }
        }
      ]
    });
    await actionSheet.present();
  }
}
