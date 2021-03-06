import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { NgModule, Optional, SkipSelf } from '@angular/core';
import { IonicModule } from '@ionic/angular';

import { CoreProviders } from './core.providers';
import { throwIfAlreadyLoaded } from './module-import-guard';

@NgModule({
  imports: [CommonModule, IonicModule.forRoot(), HttpClientModule],
  exports: [],
  declarations: [],
  providers: CoreProviders.getProviders()
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
