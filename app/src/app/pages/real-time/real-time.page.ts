import { AfterViewInit, Component } from '@angular/core';

import { LogsService, TheBobberService, ToastService, WeatherService } from '../../core';

@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements AfterViewInit {
  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private weather: WeatherService,
    private logsService: LogsService
  ) {}

  ngAfterViewInit() {
    this.weather.getWeather().subscribe(
      data => {
        this.logsService.addMessage(data, "Weather");
      },
      err => this.logsService.addError(err, "Weather")
    );
  }

}
