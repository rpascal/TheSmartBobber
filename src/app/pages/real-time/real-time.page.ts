import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { CameraResultType, CameraSource, Plugins } from '@capacitor/core';

import { BluetoothSerialService } from '../../core';

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

  isConnected = false;

  constructor(
    private sanitizer: DomSanitizer,
    private ble: BluetoothSerialService
  ) {}

  public ngOnInit() {
    this.ble.startScan().subscribe(
      (device: IDevice) => {
        this.devices.push(device);
        console.log(device);
      },
      err => {
        console.log(err);
        this.messages.push("startScan err: ");
        this.messages.push(err);
      }
    );
  }

  async refresh() {
    try {
      this.devices = [];
      this.devices.length = 0;
      this.isDiscovering = true;
      await this.ble.discoverUnpaired();
    } catch (err) {
      this.messages.push("refresh err: ");
      this.messages.push(err);
    }
    this.isDiscovering = false;
  }

  connnect(device: IDevice) {
    this.ble.connect(device.address).subscribe(
      connected => {
        this.isConnected = true;
        this.messages.push("Connected: ");
        this.messages.push(connected);
        this.ble.subscribe("\n").subscribe(
          data => {
            this.messages.push("data subscribe: ");
            this.messages.push(data);
          },
          err => {
            this.messages.push("subscribe err: ");
            this.messages.push(err);
          }
        );
      },
      err => {
        this.messages.push("connect err: ");
        this.messages.push(err);
      }
    );
  }

  async write() {
    try {
      const result = await this.ble.write("hello world");
      this.messages.push("result: ");
      this.messages.push(result);
    } catch (err) {
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
