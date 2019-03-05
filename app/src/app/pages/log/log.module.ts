import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { IonicModule } from '@ionic/angular';

import { SharedModule } from '../../shared/shared.module';
import { LogPage } from './log.page';
import { LazyLoadImageModule } from 'ng-lazyload-image';
import { LogSlideComponent } from './log-slide/log-slide.component';


@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    SharedModule,
    LazyLoadImageModule,
    RouterModule.forChild([{ path: '', component: LogPage }])
  ],
  declarations: [LogPage, LogSlideComponent]
})
export class LogPageModule {}
