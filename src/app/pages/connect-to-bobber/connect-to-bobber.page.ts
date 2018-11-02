import { Component, OnInit, ChangeDetectorRef } from '@angular/core';

import { BluetoothSerialService, IDevice } from '../../core';
import { ToastService } from '../../core/toast/toast.serivce';
import { Observable } from 'rxjs';
import { Router } from '@angular/router';
import { NavController } from '@ionic/angular';

@Component({
  selector: "app-connect-to-bobber",
  templateUrl: "./connect-to-bobber.page.html",
  styleUrls: ["./connect-to-bobber.page.scss"]
})
export class ConnectToBobberPage implements OnInit {
  devices: IDevice[] = [];
  isDiscovering = false;
  isConnecting$: Observable<boolean>;

  constructor(
    private ble: BluetoothSerialService,
    private toastService: ToastService,
    private router: Router,
    private navCtrl: NavController,
    private ref: ChangeDetectorRef
  ) { }

  fakeConnecting(){
    this.ble.fakeConnecting();
  }

  public ngOnInit() {
    this.isConnecting$ = this.ble.connecting$;
    // this.isConnecting$.subscribe(value => {
    //   // this.toastService.message(`changed connecting status ${value}`);
    //   this.ref.detectChanges();
    // })
  }

  async refresh() {
    try {
      this.isDiscovering = true;
      const newDevices = await this.ble.discoverUnpaired();
      this.devices = newDevices;
    } catch (err) {
      this.toastService.error(`Error! ${err}`);
    }
    this.isDiscovering = false;
  }

  goToHome() {
    this.router.navigateByUrl('/app/tabs/(real-time:real-time)')
  }

  connnect(device: IDevice) {
    this.toastService.message("Attempting to connect: " + device.address);
    this.ble.connect(device.address);
  }
}
