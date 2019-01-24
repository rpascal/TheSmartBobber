import { Component, Input } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { ILogMessage, LogsService } from '../../../core/logs-service/logs.service';


@Component({
  selector: "app-logs",
  templateUrl: "./logs.component.html",
  styleUrls: ["./logs.component.scss"]
})
export class LogsComponent {
  @Input() logs: ILogMessage[];

  constructor(private modalCtrl: ModalController,
    private logsService: LogsService
    ) {}

  dismiss() {
    this.modalCtrl.dismiss();
  }

  clear() {
    this.logsService.clear();
  }
}
