import { AfterViewInit, Component } from '@angular/core';

import { IWeather, LogsService, TheBobberService, ToastService, WeatherService } from '../../core';
import { SoundsService } from '../../core/sounds/sounds.service';
import { VibrationService } from '../../core/vibration/vibration.service';

@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements AfterViewInit {
  weatherData: IWeather;

  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private weather: WeatherService,
    private logsService: LogsService,
    private vibration: VibrationService,
    private sounds: SoundsService
  ) {}

  ngAfterViewInit() {
    this.weather.getWeather().subscribe(
      data => {
        this.weatherData = data;
      },
      err => this.logsService.addError(err, "Weather")
    );
  }

  vibrate() {
    this.vibration.triple();
  }

  sound() {
    this.sounds.bell();
  }
}
