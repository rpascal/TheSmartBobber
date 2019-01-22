import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { NgModule, Optional, SkipSelf } from '@angular/core';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial/ngx';
import { IonicModule } from '@ionic/angular';

import { throwIfAlreadyLoaded } from './module-import-guard';

@NgModule({
  imports: [CommonModule, IonicModule.forRoot(), HttpClientModule],
  exports: [],
  declarations: [],
  providers: [
    BluetoothSerial
  ]
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
