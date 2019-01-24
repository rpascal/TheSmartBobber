import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';

import { MessagesService } from './messages-service/messages.service';
import { MessagesComponent } from './messages/messages.component';

@Component({
  selector: "app-messages-popover",
  templateUrl: "./messages-popover.component.html",
  styleUrls: ["./messages-popover.component.scss"]
})
export class MessagesPopoverComponent {
  constructor(
    public modalController: ModalController,
    private messagesService: MessagesService
  ) {}

  async present(ev: any) {
    const modal = await this.modalController.create({
      component: MessagesComponent,
      componentProps: { messages: this.messagesService.getMessages() }
    });
    return await modal.present();
  }
}
