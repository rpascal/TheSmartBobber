import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';

import { IDevice, TheBobberService, ToastService } from '../../core';

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
    private bobber: TheBobberService,
    private toastService: ToastService,
    private router: Router
  ) {}

  public ngOnInit() {
    console.log("Hello")
    // this.isConnecting$ = this.bobber.connecting$;
    this.connect();
  }

  fakeConnecting() {
    // this.bobber.fakeConnecting();
  }

  connect() {
    this.bobber.connect();
  }

  async refreshDevices() {
    try {
      this.isDiscovering = true;
      let newDevices = await this.bobber.discoverUnpaired();
      newDevices = newDevices.filter(x => x.name && x.name.length > 0);
      this.devices = newDevices;
    } catch (err) {
      this.toastService.error(`Error! ${err}`);
    }
    this.isDiscovering = false;
  }

  connnect(device: IDevice) {
    this.bobber.connectViaAddress(device.address);
  }
}
