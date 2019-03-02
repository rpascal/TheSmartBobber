import { ChangeDetectionStrategy, ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { ActionSheetController, LoadingController } from '@ionic/angular';
import { Observable } from 'rxjs';

import { LogsService, TheBobberService, ToastService } from '../../../core';
import { SoundsService } from '../../../core/sounds/sounds.service';
import { VibrationService } from '../../../core/vibration/vibration.service';

@Component({
  selector: "app-settings-content",
  templateUrl: "./settings-content.component.html",
  styleUrls: ["./settings-content.component.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class SettingsContentComponent implements OnInit {
  ledStatus = false;
  vibrationStatus = true;
  soundStatus = true;

  connectionStatusMessage$: Observable<string>;

  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private logsService: LogsService,
    public actionSheetController: ActionSheetController,
    public loadingController: LoadingController,
    private vibration: VibrationService,
    private sounds: SoundsService,
    private cd: ChangeDetectorRef
  ) {}

  ngOnInit() {
    this.vibration.active.asObservable().subscribe(data => {
      this.vibrationStatus = data;
    });
    this.sounds.active.asObservable().subscribe(data => {
      this.soundStatus = data;
    });
    this.connectionStatusMessage$ = this.bobber.connectionStatusMessage$;
    this.connectionStatusMessage$.subscribe(data => {
      this.cd.detectChanges();
    });
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

  vibrationChange() {
    this.vibration.setActive(this.vibrationStatus);
  }

  soundChange() {
    this.sounds.setActive(this.soundStatus);
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

  async send(num: string) {
    try {
      const result = await this.bobber.write(num);
      // this.logsService.addMessage(result, ControlsPage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }
  }

  sendOne() {
    this.send("1");
  }
  sendTwo() {
    this.send("2");
  }
  sendThree() {
    this.send("3");
  }
  sendFour() {
    this.send("4");
  }
}
