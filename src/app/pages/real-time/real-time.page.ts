import { AfterViewInit, ChangeDetectionStrategy, ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core';

import { BluetoothSerialService, ToastService } from '../../core';
import { WeatherService } from '../../core/weather/weather.service';
import { MessagesComponent } from '../../shared/messages/messages.component';

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
export class RealTimePage implements OnInit, AfterViewInit {
  @ViewChild(MessagesComponent) messages: MessagesComponent;

  something: any;

  isConnected = false;

  constructor(
    private ble: BluetoothSerialService,
    private toast: ToastService,
    private cd: ChangeDetectorRef,
    private weather: WeatherService
  ) {}

  decoder = new TextDecoder("utf-8");

  ab2str(buf) {
    return this.decoder.decode(new Uint8Array(buf));
  }

  // ab2str(buf) {
  //   return String.fromCharCode.apply(null, new Uint16Array(buf));
  // }
  str2ab(str) {
    const buf = new ArrayBuffer(str.length * 2); // 2 bytes for each char
    const bufView = new Uint16Array(buf);
    for (let i = 0, strLen = str.length; i < strLen; i++) {
      bufView[i] = str.charCodeAt(i);
    }
    return buf;
  }

  ngAfterViewInit() {
    this.weather.getWeather().subscribe(data => {
      this.messages.addMessage(data, "Weather");
    });

    this.messages.addMessage({
      newLine: true,
      raw: {
        data: "som shit 1",
        str: "Whatever"
      }
    });
    this.messages.addMessage({
      newLine: true,
      raw: {
        data: "som shit 2",
        str: "Whatever"
      }
    });
    this.messages.addMessage({
      newLine: true,
      raw: {
        data: "som shit 3",
        str: "Whatever"
      }
    });
  }

  public ngOnInit() {
    this.ble.subscribe("\n").subscribe(data => {
      // this.toast.message(`Got data from bobber: ${data}`);
      const b = String.fromCharCode.apply(null, new Uint8Array(data));

      this.messages.addMessage({
        newLine: true,
        raw: data,
        // decode: decoder.decode(data),
        str: b
      });
      this.cd.detectChanges();
    });

    this.ble.subscribeRaw().subscribe(data => {
      // data is an ArrayBuffer, convert it to typed array
      const bytes = new Uint8Array(data);
      // console.log(bytes);

      const decoder = new TextDecoder("utf-8");
      const b = String.fromCharCode.apply(null, new Uint8Array(data));

      // this.toast.message(`RAW: ${b}`);

      this.messages.addMessage({
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

      const ab = this.str2ab("1");

      const result = await this.ble.write(ab);
      // this.toast.message(`Sent message all good ${result}`);
      this.messages.addMessage("result: ");
      this.messages.addMessage(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);

      this.messages.addMessage("write err: ");
      this.messages.addMessage(err);
    }
  }

  async write1() {
    try {
      const data = new Uint8Array(1);
      data[0] = 0x31;
      const result = await this.ble.write(data);
      this.toast.message(`Sent message all good from 1 ${result}`);
      this.messages.addMessage("result: ");
      this.messages.addMessage(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);

      this.messages.addMessage("write err: ");
      this.messages.addMessage(err);
    }
  }

  async write2() {
    try {
      const result = await this.ble.write(this.something);
      this.toast.message(`Sent message all good ${result} ${this.something}`);
      this.messages.addMessage("result: ");
      this.messages.addMessage(result);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);

      this.messages.addMessage("write err: ");
      this.messages.addMessage(err);
    }
  }
}
