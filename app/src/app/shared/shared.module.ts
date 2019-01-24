import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { MessagesPopoverComponent } from './messages-popover/messages-popover.component';
import { MessagesService } from './messages-popover/messages-service/messages.service';
import { MessagesComponent } from './messages-popover/messages/messages.component';

@NgModule({
  imports: [IonicModule.forRoot(), CommonModule],
  declarations: [MessagesComponent, MessagesPopoverComponent],
  exports: [MessagesComponent, MessagesPopoverComponent],
  entryComponents: [MessagesComponent],
  providers: [MessagesService]
})
export class SharedModule {}
