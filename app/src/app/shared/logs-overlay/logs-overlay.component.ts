import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';

import { LogsService } from './logs-service/logs.service';
import { LogsComponent } from './logs/logs.component';

@Component({
  selector: "app-logs-overlay",
  templateUrl: "./logs-overlay.component.html",
  styleUrls: ["./logs-overlay.component.scss"]
})
export class LogsOverlayComponent {
  constructor(
    public modalController: ModalController,
    private logsService: LogsService
  ) {}

  async present(ev: any) {
    const modal = await this.modalController.create({
      component: LogsComponent,
      componentProps: { logs: this.logsService.getMessages() }
    });
    return await modal.present();
  }
}
