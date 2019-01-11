import { Injectable } from '@angular/core';
import { ToastController } from '@ionic/angular';
import { ToastOptions } from '@ionic/core';

import { CoreModule } from '../core.module';

@Injectable({
  providedIn: CoreModule
})
export class ToastService {
  constructor(private toast: ToastController) { }

  async message(message: string, options?: ToastOptions) {
    const baseOptions: ToastOptions = {
      message: message,
      duration: 5000
    };

    const toast = await this.toast.create(Object.assign(baseOptions, options));
    toast.present();
  }


  async error(message: string, options?: ToastOptions) {
    const baseOptions: ToastOptions = {
      cssClass: 'error-toast'
    };
    this.message(message, Object.assign(baseOptions, options))
  }

}
