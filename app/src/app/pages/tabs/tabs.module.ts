import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

import { SharedModule } from '../../shared/shared.module';
import { ControlsPageModule } from '../controls/controls.module';
import { LogPageModule } from '../log/log.module';
import { RealTimePageModule } from '../real-time/real-time.module';
import { TabsPage } from './tabs.page';
import { TabsPageRoutingModule } from './tabs.router.module';

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    SharedModule,
    FormsModule,
    TabsPageRoutingModule,
    RealTimePageModule,
    LogPageModule,
    ControlsPageModule
  ],
  declarations: [TabsPage]
})
export class TabsPageModule {}
