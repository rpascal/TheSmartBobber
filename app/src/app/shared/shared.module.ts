import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { IonicModule } from '@ionic/angular';

import { BiteGraphComponent } from './bite-graph/bite-graph.component';
import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsComponent } from './logs-overlay/logs/logs.component';
import { ManageLogComponent } from './manage-log/manage-log.component';
import { NewLogComponent } from './manage-log/new-log/new-log.component';
import { SettingsContentComponent } from './settings/settings-content/settings-content.component';
import { SettingsComponent } from './settings/settings.component';

@NgModule({
  imports: [
    IonicModule.forRoot(),
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    MatInputModule
  ],
  declarations: [
    LogsComponent,
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent,
    SettingsComponent,
    SettingsContentComponent,
    NewLogComponent
  ],
  exports: [
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent,
    SettingsComponent
  ],
  entryComponents: [LogsComponent, SettingsContentComponent, NewLogComponent],
  providers: []
})
export class SharedModule {}
