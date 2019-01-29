import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { BiteGraphComponent } from './bite-graph/bite-graph.component';
import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsComponent } from './logs-overlay/logs/logs.component';
import { ManageLogComponent } from './manage-log/manage-log.component';

@NgModule({
  imports: [IonicModule.forRoot(), CommonModule],
  declarations: [
    LogsComponent,
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent
  ],
  exports: [LogsOverlayComponent, BiteGraphComponent, ManageLogComponent],
  entryComponents: [LogsComponent],
  providers: []
})
export class SharedModule {}
