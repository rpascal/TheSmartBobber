import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { LogsService, TheBobberService, ToastService } from '../../../core';

@Component({
  selector: "app-settings-content",
  templateUrl: "./settings-content.component.html",
  styleUrls: ["./settings-content.component.scss"]
})
export class SettingsContentComponent implements OnInit {
  ledStatus = false;
  connectionStatusMessage$: Observable<string>;

  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private logsService: LogsService
  ) {}

  ngOnInit() {
    this.connectionStatusMessage$ = this.bobber.connectionStatusMessage$;
  }

  async ledChange() {
    try {
      const result = await this.bobber.write(this.ledStatus ? "1" : "0");
      // this.logsService.addMessage(result, ControlsPage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }
  }
}
