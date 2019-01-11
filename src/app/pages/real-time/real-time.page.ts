import { Component, OnInit, ChangeDetectionStrategy, ChangeDetectorRef } from '@angular/core';

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
  styleUrls: ["real-time.page.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class RealTimePage implements OnInit {
  messages: any[] = [];
  devices: IDevice[] = [];
  isDiscovering = false;

  something: any;

  isConnected = false;

  constructor(
    private ble: BluetoothSerialService,
    private toast: ToastService,
    private cd: ChangeDetectorRef
  ) { }

  decoder = new TextDecoder("utf-8");

  ab2str(buf) {
    return this.decoder.decode(new Uint8Array(buf));
  }

  // ab2str(buf) {
  //   return String.fromCharCode.apply(null, new Uint16Array(buf));
  // }
  str2ab(str) {
    var buf = new ArrayBuffer(str.length * 2); // 2 bytes for each char
    var bufView = new Uint16Array(buf);
    for (var i = 0, strLen = str.length; i < strLen; i++) {
      bufView[i] = str.charCodeAt(i);
    }
    return buf;
  }

  public ngOnInit() {
    this.ble.subscribe("\n").subscribe(data => {
      // this.toast.message(`Got data from bobber: ${data}`);
      const b = String.fromCharCode.apply(null, new Uint8Array(data));

      this.messages.push({
        newLine: true,
        raw: data,
        // decode: decoder.decode(data),
        str: b
      });
      this.cd.detectChanges();


    });

    this.ble.subscribeRaw().subscribe(data => {
      // data is an ArrayBuffer, convert it to typed array
      var bytes = new Uint8Array(data);
      // console.log(bytes);

      const decoder = new TextDecoder('utf-8');
      const b = String.fromCharCode.apply(null, new Uint8Array(data));

      // this.toast.message(`RAW: ${b}`);

      this.messages.push({
        raw: data,
        decode: decoder.decode(data),
        str: b
      });
      this.cd.detectChanges();


    });
  }

  async write() {
    try {
      const data = new Uint8Array(1);
      data[0] = 0x30;

      const ab = this.str2ab('1');

      const result = await this.ble.write(ab);
      // this.toast.message(`Sent message all good ${result}`);
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
      const result = await this.ble.write(data);
      this.toast.message(`Sent message all good from 1 ${result}`);
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
