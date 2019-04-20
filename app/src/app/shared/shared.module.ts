import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { MatTabsModule } from '@angular/material/tabs';
import { IonicModule } from '@ionic/angular';

import { BiteGraphComponent } from './bite-graph/bite-graph.component';
import { LogsOverlayComponent } from './logs-overlay/logs-overlay.component';
import { LogsComponent } from './logs-overlay/logs/logs.component';
import { ManageLogComponent } from './manage-log/manage-log.component';
import { NewLogComponent } from './manage-log/new-log/new-log.component';
import { SecretOverlayComponent } from './secret-overlay/secret-overlay.component';
import { SecretComponent } from './secret-overlay/secret/secret.component';
import { SettingsContentComponent } from './settings/settings-content/settings-content.component';
import { SettingsComponent } from './settings/settings.component';
import { TakePhotoComponent } from './take-photo/take-photo.component';
import { TemperatureConverterPipe } from './temperature-converter.pipe';

@NgModule({
  imports: [
    IonicModule.forRoot(),
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    MatInputModule,
    MatTabsModule
  ],
  declarations: [
    LogsComponent,
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent,
    SettingsComponent,
    SettingsContentComponent,
    NewLogComponent,
    TakePhotoComponent,
    SecretOverlayComponent,
    SecretComponent,
    TemperatureConverterPipe
  ],
  exports: [
    LogsOverlayComponent,
    BiteGraphComponent,
    ManageLogComponent,
    SettingsComponent,
    TakePhotoComponent,
    MatInputModule,
    MatTabsModule,
    SecretOverlayComponent,
    TemperatureConverterPipe
  ],
  entryComponents: [
    LogsComponent,
    SettingsContentComponent,
    NewLogComponent,
    SecretComponent
  ],
  providers: []
})
export class SharedModule {}
