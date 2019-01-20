import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';

import { MessagesComponent } from './messages/messages.component';

@NgModule({
  imports: [CommonModule],
  declarations: [MessagesComponent],
  exports: [MessagesComponent]
})
export class SharedModule {}
