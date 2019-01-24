import { Component } from '@angular/core';

import { BluetoothSerialService, ToastService } from '../../core';
import { LogsService } from '../../shared/logs-overlay/logs-service/logs.service';

@Component({
  selector: "app-controls",
  templateUrl: "controls.page.html",
  styleUrls: ["controls.page.scss"]
})
export class ControlsPage {
  ledStatus = false;

  constructor(private ble: BluetoothSerialService,
    private toast: ToastService,
    private logsService: LogsService
    ) {}

  async ledChange() {
    try {
      const result = await this.ble.write(this.ledStatus ? "1" : "0");
      this.logsService.addMessage(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }

  }
}
