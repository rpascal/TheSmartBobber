import { Component, OnInit } from '@angular/core';

import { BluetoothSerialService, IDevice } from '../../core';
import { ToastService } from '../../core/toast/toast.serivce';

@Component({
  selector: "app-connect-to-bobber",
  templateUrl: "./connect-to-bobber.page.html",
  styleUrls: ["./connect-to-bobber.page.scss"]
})
export class ConnectToBobberPage implements OnInit {
  devices: IDevice[] = [];
  isDiscovering = false;

  constructor(
    private ble: BluetoothSerialService,
    private toastService: ToastService
  ) {}

  public ngOnInit() {}

  async refresh() {
    try {
      this.isDiscovering = true;
      const newDevices = await this.ble.discoverUnpaired();
      this.devices = newDevices;
    } catch (err) {
      this.toastService.message(`Error! ${err}`);
    }
    this.isDiscovering = false;
  }

  connnect(device: IDevice) {
    this.ble.connect(device.address);
  }
}
