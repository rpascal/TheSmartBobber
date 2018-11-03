import { Component, OnInit } from '@angular/core';

import { BluetoothSerialService, ToastService } from '../../core';

// import '@ionic/pwa-elements';

interface IDevice {
  class: number;
  id: string;
  address: string;
  name: string;
}

@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements OnInit {
  messages: any[] = [];
  devices: IDevice[] = [];
  isDiscovering = false;

  something: any;

  isConnected = false;

  constructor(
    private ble: BluetoothSerialService,
    private toast: ToastService
  ) {}

  public ngOnInit() {
    this.ble.subscribe("\n").subscribe(data => {
      this.toast.message(`Got data from bobber: ${data}`);
    });

    this.ble.subscribeRaw().subscribe(data => {
      this.toast.message(`Got data from bobber  RAW: ${data}`);
    });
  }

  async write() {
    try {
      const data = new Uint8Array(1);
      data[0] = 0x30;

      const result = await this.ble.write("0\n");
      this.toast.message(`Sent message all good ${result}`);
      this.messages.push("result: ");
      this.messages.push(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);

      this.messages.push("write err: ");
      this.messages.push(err);
    }
  }

  async write1() {
    try {
      const data = new Uint8Array(1);
      data[0] = 0x31;
      const result = await this.ble.write("1\n");
      this.toast.message(`Sent message all good ${result}`);
      this.messages.push("result: ");
      this.messages.push(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);

      this.messages.push("write err: ");
      this.messages.push(err);
    }
  }

  async write2() {
    try {
      const result = await this.ble.write(this.something);
      this.toast.message(`Sent message all good ${result} ${this.something}`);
      this.messages.push("result: ");
      this.messages.push(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);

      this.messages.push("write err: ");
      this.messages.push(err);
    }
  }


}
