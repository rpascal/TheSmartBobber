import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { ConnectToBobberPage } from './connect-to-bobber.page';

const routes: Routes = [
  {
    path: '',
    component: ConnectToBobberPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [ConnectToBobberPage]
})
export class ConnectToBobberPageModule {}
