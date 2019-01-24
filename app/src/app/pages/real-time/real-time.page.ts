import { AfterViewInit, Component, OnInit } from '@angular/core';

import { BluetoothSerialService, ToastService } from '../../core';
import { WeatherService } from '../../core/weather/weather.service';
import { TheBobberService } from '../../core/the-bobber/the-bobber.service';
import { LogsService } from '../../core/logs-service/logs.service';

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
export class RealTimePage implements OnInit, AfterViewInit {
  something: any;

  constructor(
    private ble: TheBobberService,
    private toast: ToastService,
    private weather: WeatherService,
    private logsService: LogsService
  ) {}

  ngAfterViewInit() {
    this.weather.getWeather().subscribe(data => {
      this.logsService.addMessage(data, "Weather");
    });

    // this.ble.subscribe("\n").subscribe(data => {
    //   const b = String.fromCharCode.apply(null, new Uint8Array(data));

    //   this.logsService.addMessage({
    //     raw: data,
    //     str: b
    //   }, RealTimePage.name);
    // });

    // this.ble.subscribeRaw().subscribe(data => {
    //   const decoder = new TextDecoder("utf-8");
    //   const b = String.fromCharCode.apply(null, new Uint8Array(data));

    //   this.logsService.addMessage({
    //     raw: data,
    //     decode: decoder.decode(data),
    //     str: b
    //   }, RealTimePage.name);
    // });
  }

  public ngOnInit() {}

  async textBox() {
    try {
      const result = await this.ble.write(this.something);
      this.logsService.addMessage(result, RealTimePage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }
  }


}
