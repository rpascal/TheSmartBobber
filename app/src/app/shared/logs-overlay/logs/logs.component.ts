import { Component, Input } from '@angular/core';
import { ModalController } from '@ionic/angular';

import { ILogMessage } from '../logs-service/logs.service';

@Component({
  selector: "app-logs",
  templateUrl: "./logs.component.html",
  styleUrls: ["./logs.component.scss"]
})
export class LogsComponent {
  @Input() logs: ILogMessage[];

  constructor(private modalCtrl: ModalController) {}

  dismiss() {
    this.modalCtrl.dismiss();
  }
}
