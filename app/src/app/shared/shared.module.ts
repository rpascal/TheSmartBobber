import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { BiteGraphComponent } from './bite-graph/bite-graph.component';
import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsComponent } from './logs-overlay/logs/logs.component';

@NgModule({
  imports: [IonicModule.forRoot(), CommonModule],
  declarations: [LogsComponent, LogsOverlayComponent, BiteGraphComponent],
  exports: [LogsOverlayComponent, BiteGraphComponent],
  entryComponents: [LogsComponent],
  providers: []
})
export class SharedModule {}
