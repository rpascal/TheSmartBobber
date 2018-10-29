import { CommonModule } from '@angular/common';
import { NgModule, Optional, SkipSelf } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { throwIfAlreadyLoaded } from './module-import-guard';

@NgModule({
  imports: [CommonModule, IonicModule.forRoot()],
  exports: [],
  declarations: [],
  providers: []
})
export class CoreModule {
  constructor(
    @Optional()
    @SkipSelf()
    parentModule: CoreModule
  ) {
    throwIfAlreadyLoaded(parentModule, "CoreModule");
  }
}
