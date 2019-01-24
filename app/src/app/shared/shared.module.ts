import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsService } from './logs-overlay/logs-service/logs.service';
import { LogsComponent } from './logs-overlay/logs/logs.component';

@NgModule({
  imports: [IonicModule.forRoot(), CommonModule],
  declarations: [LogsComponent, LogsOverlayComponent],
  exports: [LogsOverlayComponent],
  entryComponents: [LogsComponent],
  providers: [LogsService]
})
export class SharedModule {}
