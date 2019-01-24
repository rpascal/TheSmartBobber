import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';

import { environment } from '../../../environments/environment';
import { BluetoothSerialService, IDevice, ToastService } from '../../core';
import { TheBobberService } from '../../core/the-bobber/the-bobber.service';

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
    private ble: TheBobberService,
    private toastService: ToastService,
    private router: Router
  ) {}

  fakeConnecting() {
    this.ble.fakeConnecting();
  }

  public ngOnInit() {
    this.isConnecting$ = this.ble.connecting$;
  }

  async refresh() {
    try {
      this.isDiscovering = true;
      let newDevices = await this.ble.discoverUnpaired();
      newDevices = newDevices.filter(x => x.name && x.name.length > 0);
      this.devices = newDevices;
    } catch (err) {
      this.toastService.error(`Error! ${err}`);
    }
    this.isDiscovering = false;
  }

  goToHome() {
    this.router.navigateByUrl(environment.realTimePage);
  }

  connnect(device: IDevice) {
    this.toastService.message("Attempting to connect: " + device.address);
    this.ble.connect(device.address);
  }
}
