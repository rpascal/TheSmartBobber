import { Component, OnInit } from '@angular/core';
import { ActionSheetController, LoadingController } from '@ionic/angular';
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
    private logsService: LogsService,
    public actionSheetController: ActionSheetController,
    public loadingController: LoadingController
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

  disconnect() {
    this.bobber.disconnect();
  }

  async connect() {
    const loading = await this.loadingController.create({
      message: "Pulling Devices..."
    });
    await loading.present();

    const devices = (await this.bobber.discoverUnpaired()).filter(
      x =>
        x.name &&
        x.name.length > 0 &&
        x.name.toLocaleLowerCase().includes("bobber")
    );

    if (devices.length > 0) {
      const actionSheet = await this.actionSheetController.create({
        header: "Devices Near Me",
        buttons: devices.map(item => {
          return {
            text: item.name,
            handler: () => {
              this.bobber.connectViaAddress(item.address);
            }
          };
        })
      });
      await actionSheet.present();
    } else {
      this.toast.error("Couldn't find any devices");
    }

    await loading.dismiss();
  }
}
