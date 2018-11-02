import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { CameraResultType, CameraSource, Plugins } from '@capacitor/core';

import { BluetoothSerialService } from '../../core';
import { ToastService } from '../../core/toast/toast.serivce';

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
  image: any;
  messages: any[] = [];
  devices: IDevice[] = [];
  isDiscovering = false;

  something: any;


  isConnected = false;

  constructor(
    private sanitizer: DomSanitizer,
    private ble: BluetoothSerialService,
    private toast: ToastService
  ) { }

  public ngOnInit() {

    this.ble.subscribe('\n').subscribe((data) => {
      this.toast.message(`Got data from bobber: ${data}`);
    })

    
    this.ble.subscribeRaw().subscribe((data) => {
      this.toast.message(`Got data from bobber  RAW: ${data}`);
    })
  }

  async refresh() {
    // try {
    //   this.isDiscovering = true;
    //   const newDevices = await this.ble.discoverUnpaired();
    //   this.devices = newDevices;
    // } catch (err) {
    //   this.messages.push("refresh err: ");
    //   this.messages.push(err);
    // }
    // this.isDiscovering = false;
  }

  connnect(device: IDevice) {
    // this.ble.connect(device.address).subscribe(
    //   connected => {
    //     this.isConnected = true;
    //     this.messages.push("Connected: ");
    //     this.messages.push(connected);
    //     this.ble.subscribe("\n").subscribe(
    //       data => {
    //         this.messages.push("data subscribe: ");
    //         this.messages.push(data);
    //       },
    //       err => {
    //         this.messages.push("subscribe err: ");
    //         this.messages.push(err);
    //       }
    //     );
    //   },
    //   err => {
    //     this.messages.push("connect err: ");
    //     this.messages.push(err);
    //   }
    // );
  }

  async write() {
    try {
      //var blah: char = '';
      // var data = new Uint8Array(4);
      // data[0] = 0x41;
      // data[1] = 0x42;
      // data[2] = 0x43;
      // data[3] = 0x44;
      var data = new Uint8Array(1);
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
      var data = new Uint8Array(1);
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

  async takePhoto() {
    try {
      const capturedImage = await Plugins.Camera.getPhoto({
        quality: 90,
        allowEditing: false,
        source: CameraSource.Camera,
        resultType: CameraResultType.Base64
      });
      this.image = this.sanitizer.bypassSecurityTrustResourceUrl(
        capturedImage && capturedImage.base64Data
      );
    } catch (err) {
      console.log(err);
    }
  }
}
