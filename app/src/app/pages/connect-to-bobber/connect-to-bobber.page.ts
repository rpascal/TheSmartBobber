import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';

import { IDevice, ToastService } from '../../core';
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
    private bobber: TheBobberService,
    private toastService: ToastService,
    private router: Router
  ) {}

  public ngOnInit() {
    this.isConnecting$ = this.bobber.connecting$;
    this.connect();
  }

  fakeConnecting() {
    this.bobber.fakeConnecting();
  }

  async connect() {
    try {
      await this.bobber.connect();
    } catch (err) {
      this.toastService.error("Failed to connect to bobber");
    }
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

  async connnect(device: IDevice) {
    try {
      await this.bobber.connectViaAddress(device.address);
    } catch (err) {
      this.toastService.error("Failed to connect to bobber");
    }
  }
}
