import { Injectable } from '@angular/core';
import { ToastController } from '@ionic/angular';
import { ToastOptions } from '@ionic/core';

import { CoreModule } from '../core.module';

@Injectable({
  providedIn: CoreModule
})
export class ToastService {
  constructor(private toast: ToastController) {}

  async message(message: string) {
    const toast = await this.toast.create({
      message: message,
      duration: 50000
    });
    toast.present();
  }

  async messageWithOptions(message: string, options?: ToastOptions) {
    const baseOptions: ToastOptions = {
      message: message,
      duration: 5000
    };

    const toast = await this.toast.create(Object.assign(baseOptions, options));
    toast.present();
  }
}
