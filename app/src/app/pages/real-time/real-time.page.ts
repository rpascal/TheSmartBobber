import { AfterViewInit, Component } from '@angular/core';
import { Observable } from 'rxjs';

import { IWeather, LogsService, TheBobberService, WeatherService } from '../../core';
import { SoundsService } from '../../core/sounds/sounds.service';
import { VibrationService } from '../../core/vibration/vibration.service';

@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements AfterViewInit {
  weatherData: IWeather;
  tempData$: Observable<number>;

  constructor(
    private bobber: TheBobberService,
    private weather: WeatherService,
    private logsService: LogsService,
    private vibration: VibrationService,
    private sounds: SoundsService
  ) {}

  ngAfterViewInit() {
    this.tempData$ = this.bobber.temps$;
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
