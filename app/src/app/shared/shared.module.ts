import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsComponent } from './logs-overlay/logs/logs.component';

@NgModule({
  imports: [IonicModule.forRoot(), CommonModule],
  declarations: [LogsComponent, LogsOverlayComponent],
  exports: [LogsOverlayComponent],
  entryComponents: [LogsComponent],
  providers: []
})
export class SharedModule {}
