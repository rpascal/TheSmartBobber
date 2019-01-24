import { Component, Input } from '@angular/core';
import { ModalController } from '@ionic/angular';

@Component({
  selector: "app-messages",
  templateUrl: "./messages.component.html",
  styleUrls: ["./messages.component.scss"]
})
export class MessagesComponent {
  // private messages: any[];
  //  implements OnInit, OnDestroy
  @Input() messages: any[];

  constructor(
    // private messagesService: MessagesService,
    private modalCtrl: ModalController
  ) {}

  // ngOnInit() {
  //   this.messages = this.messagesService.getMessages();
  // }

  // ngOnDestroy() {
  //   this.messages = [];
  //   this.messages.length = 0;
  // }

  dismiss() {
    this.modalCtrl.dismiss();
  }
}
