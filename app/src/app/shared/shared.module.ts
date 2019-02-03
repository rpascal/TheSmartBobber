import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

import { BiteGraphComponent } from './bite-graph/bite-graph.component';
import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsComponent } from './logs-overlay/logs/logs.component';
import { ManageLogComponent } from './manage-log/manage-log.component';
import { SettingsContentComponent } from './settings/settings-content/settings-content.component';
import { SettingsComponent } from './settings/settings.component';

@NgModule({
  imports: [IonicModule.forRoot(), CommonModule, FormsModule],
  declarations: [
    LogsComponent,
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent,
    SettingsComponent,
    SettingsContentComponent
  ],
  exports: [
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent,
    SettingsComponent
  ],
  entryComponents: [LogsComponent, SettingsContentComponent],
  providers: []
})
export class SharedModule {}
