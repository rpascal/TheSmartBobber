import { Component, OnInit } from '@angular/core';
import { PopoverController } from '@ionic/angular';

import { SettingsContentComponent } from './settings-content/settings-content.component';

@Component({
  selector: "app-settings",
  templateUrl: "./settings.component.html",
  styleUrls: ["./settings.component.scss"]
})
export class SettingsComponent implements OnInit {
  constructor(public popoverController: PopoverController) {}

  ngOnInit() {}

  async openSettings(ev: any) {
    const popover = await this.popoverController.create({
      component: SettingsContentComponent,
      event: ev,
      translucent: true
    });
    return await popover.present();
  }
}
