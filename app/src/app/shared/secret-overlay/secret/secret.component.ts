import { Component, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';

import { SoundsService } from '../../../core/sounds/sounds.service';

@Component({
  selector: "app-secret",
  templateUrl: "./secret.component.html",
  styleUrls: ["./secret.component.scss"]
})
export class SecretComponent implements OnInit {
  constructor(
    private modalCtrl: ModalController,
    private sounds: SoundsService
  ) {}

  ngOnInit() {
    this.sounds.preload("dickhead", "assets/audio/dickhead.mp3");
  }

  sound() {
    this.sounds.play("dickhead");
  }

  dismiss() {
    this.modalCtrl.dismiss();
  }
}
