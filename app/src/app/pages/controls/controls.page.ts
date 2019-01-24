import { Component } from '@angular/core';

import { BluetoothSerialService, ToastService } from '../../core';
import { TheBobberService } from '../../core/the-bobber/the-bobber.service';
import { LogsService } from '../../core/logs-service/logs.service';

@Component({
  selector: "app-controls",
  templateUrl: "controls.page.html",
  styleUrls: ["controls.page.scss"]
})
export class ControlsPage {
  ledStatus = false;

  constructor(private ble: TheBobberService,
    private toast: ToastService,
    private logsService: LogsService
    ) {}

  async ledChange() {
    try {
      const result = await this.ble.write(this.ledStatus ? "1" : "0");
      // this.logsService.addMessage(result, ControlsPage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }

  }
}
