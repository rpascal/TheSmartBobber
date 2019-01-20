import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

import { environment } from '../../../environments/environment';
import { CoreModule } from '../core.module';

export interface IWeather {
  coord: {
    lon: number;
    lat: number;
  };
  weather: [
    {
      id: number;
      main: string;
      description: string;
      icon: string;
    },
    {
      id: number;
      main: string;
      description: string;
      icon: string;
    }
  ];
  base: string;
  main: {
    temp: number;
    pressure: number;
    humidity: number;
    temp_min: number;
    temp_max: number;
  };
  visibility: number;
  wind: {
    speed: number;
    deg: number;
    gust: number;
  };
  clouds: {
    all: number;
  };
  name: string;
  cod: number;
}

@Injectable({
  providedIn: CoreModule
})
export class WeatherService {
  private readonly key: string = environment.weatherKey;

  constructor(private http: HttpClient) {}

  getWeather(): Observable<IWeather> {
    const lat = 41.05905;
    const lon = -82.02216;
    return this.http.get<IWeather>(
      `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&units=imperial&APPID=${
        this.key
      }`
    );
  }
}
