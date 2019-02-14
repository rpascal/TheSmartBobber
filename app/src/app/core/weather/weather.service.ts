import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Geolocation, GeolocationOptions, GeolocationPosition } from '@capacitor/core';
import { Observable } from 'rxjs';
import { switchMap } from 'rxjs/operators';

import { environment } from '../../../environments/environment';
import { CoreModule } from '../core.module';
import { FirebaseService } from '../firebase/firebase.service';

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
  timestamp?: Date;
}

@Injectable({
  providedIn: CoreModule
})
export class WeatherService {
  private readonly key: string = environment.weatherKey;

  constructor(private http: HttpClient, private fb: FirebaseService) {}

  getWeather(): Observable<IWeather> {
    return this.getPosition({}).pipe(
      switchMap(data => {
        return this.http
          .get<IWeather>(
            `https://api.openweathermap.org/data/2.5/weather?lat=${
              data.coords.latitude
            }&lon=${data.coords.longitude}&units=imperial&APPID=${this.key}`
          )
          .pipe(this.fb.weatherTap());
      })
    );
  }

  watchPosition(geolocationOptions: GeolocationOptions) {
    return new Observable(observer => {
      Geolocation.watchPosition(geolocationOptions, (position, err) => {
        if (err) {
          observer.error(err);
          return;
        }
        observer.next(position);
      });
    });
  }

  getPosition(
    geolocationOptions: GeolocationOptions
  ): Observable<GeolocationPosition> {
    return new Observable(observer => {
      Geolocation.getCurrentPosition(geolocationOptions)
        .then(position => {
          observer.next(position);
          observer.complete();
        })
        .catch(err => {
          observer.error(err);
          observer.complete();
        });
    });
  }
}
