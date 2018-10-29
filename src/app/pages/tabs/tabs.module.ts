import { IonicModule } from '@ionic/angular';
import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { TabsPageRoutingModule } from './tabs.router.module';

import { TabsPage } from './tabs.page';
import { ControlsPageModule } from '../controls/controls.module';
import { LogPageModule } from '../log/log.module';
import { RealTimePageModule } from '../real-time/real-time.module';

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    TabsPageRoutingModule,
    RealTimePageModule,
    LogPageModule,
    ControlsPageModule
  ],
  declarations: [TabsPage]
})
export class TabsPageModule {}
