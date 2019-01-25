import { AfterViewInit, Component, OnInit } from '@angular/core';

import { ToastService } from '../../core';
import { LogsService } from '../../core/logs-service/logs.service';
import { TheBobberService } from '../../core/the-bobber/the-bobber.service';
import { WeatherService } from '../../core/weather/weather.service';

@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements OnInit, AfterViewInit {
  something: any;

  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private weather: WeatherService,
    private logsService: LogsService
  ) {}

  ngAfterViewInit() {
    this.weather.getWeather().subscribe(data => {
      this.logsService.addMessage(data, "Weather");
    });
  }

  public ngOnInit() {}

  async textBox() {
    try {
      const result = await this.bobber.write(this.something);
      this.logsService.addMessage(result, RealTimePage.name);
    } catch (err) {
      this.toast.message(`Error send message ${err}`);
      this.logsService.addError(err);
    }
  }


}
