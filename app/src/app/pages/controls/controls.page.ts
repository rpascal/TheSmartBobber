import { Component } from '@angular/core';

import { LogsService, TheBobberService, ToastService } from '../../core';

@Component({
  selector: "app-controls",
  templateUrl: "controls.page.html",
  styleUrls: ["controls.page.scss"]
})
export class ControlsPage {
  ledStatus = false;
  something: any;

  constructor(private bobber: TheBobberService,
    private toast: ToastService,
    private logsService: LogsService
    ) {}

  async ledChange() {
    try {
      const result = await this.bobber.write(this.ledStatus ? "1" : "0");
      // this.logsService.addMessage(result, ControlsPage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }

  }

  async textBox() {
    try {
      const result = await this.bobber.write(this.something);
      this.logsService.addMessage(result, ControlsPage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }
  }

}
