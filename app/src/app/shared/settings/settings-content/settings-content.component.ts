import { AfterViewInit, ChangeDetectionStrategy, ChangeDetectorRef, Component, NgZone, OnInit } from '@angular/core';
import { ActionSheetController, LoadingController } from '@ionic/angular';
import { Observable } from 'rxjs';

import { LogsService, TheBobberService, ToastService } from '../../../core';
import { SoundsService } from '../../../core/sounds/sounds.service';
import { StorageService } from '../../../core/storage/storage.service';
import { VibrationService } from '../../../core/vibration/vibration.service';

@Component({
  selector: "app-settings-content",
  templateUrl: "./settings-content.component.html",
  styleUrls: ["./settings-content.component.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class SettingsContentComponent implements OnInit, AfterViewInit {
  private readonly config_uid = "setting_config_uid";

  private timer: NodeJS.Timeout;
  private count = 0;
  showConfig = false;


  ledStatus = false;
  vibrationStatus = true;
  soundStatus = true;
  autohook = true;

  connectionStatusMessage$: Observable<string>;
  connectionStatusMessage: string;
  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private logsService: LogsService,
    public actionSheetController: ActionSheetController,
    public loadingController: LoadingController,
    private vibration: VibrationService,
    private sounds: SoundsService,
    private cd: ChangeDetectorRef,
    private zone: NgZone,
    private storage: StorageService

  ) {
    this.appLoad();
  }

  async appLoad() {
    try {
      const value = await this.storage.getBoolean(this.config_uid);
      this.setShowConfig(value);
    } catch {
    }
  }

  setShowConfig(value: boolean) {
    this.showConfig = value;
    this.storage.set(this.config_uid, value);
  }

  ngOnInit() {
    this.vibration.active.asObservable().subscribe(data => {
      this.vibrationStatus = data;
    });
    this.sounds.active.asObservable().subscribe(data => {
      this.soundStatus = data;
    });

    this.bobber.led.asObservable().subscribe(data => {
      this.ledStatus = data;
    });

    this.bobber.autohook.asObservable().subscribe(data => {
      this.autohook = data;
    });

    this.connectionStatusMessage$ = this.bobber.connectionStatusMessage$;
    this.connectionStatusMessage$.subscribe(data => {
      this.connectionStatusMessage = data;
      this.zone.run(() => {
        this.cd.detectChanges();
      });
    });
  }

  ngAfterViewInit() {
    this.cd.detectChanges();

  }

  ledChange() {
    this.bobber.setLED(this.ledStatus);
  }

  autoHookChange() {
    this.bobber.setAutohook(this.autohook);
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
    this.bobber.requestTemp();
  }
  sendThree() {
    this.send("3");
  }
  sendFour() {
    this.send("4");
  }

  showHideConfig() {
    if (this.timer) {
      clearTimeout(this.timer);
    } else {
    }

    this.timer = setTimeout(() => {
      this.count = 0;
    }, 500);

    if (++this.count >= 5) {
      this.count = 0;
      clearTimeout(this.timer);
      this.setShowConfig(!this.showConfig);
    }
  }

  vibrate() {
    this.vibration.triple();
  }

  sound() {
    this.sounds.bell();
  }


}


