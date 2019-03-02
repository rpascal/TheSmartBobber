import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';

import { SecretComponent } from './secret/secret.component';

@Component({
  selector: "app-secret-overlay",
  templateUrl: "./secret-overlay.component.html",
  styleUrls: ["./secret-overlay.component.scss"]
})
export class SecretOverlayComponent {
  constructor(public modalController: ModalController) {}

  async present(ev: any) {
    const modal = await this.modalController.create({
      component: SecretComponent
    });
    return await modal.present();
  }
}
