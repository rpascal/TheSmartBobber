import { AfterViewInit, Component, OnInit } from '@angular/core';

import { LogsService, TheBobberService, ToastService, WeatherService } from '../../core';
import { ThemeService } from '../../core/theme/theme.service';


const themes = {
  autumn: {
    primary: '#F78154',
    secondary: '#4D9078',
    tertiary: '#B4436C',
    light: '#FDE8DF',
    medium: '#FCD0A2',
    dark: '#B89876'
  },
  night: {
    primary: '#8CBA80',
    secondary: '#FCFF6C',
    tertiary: '#FE5F55',
    medium: '#BCC2C7',
    dark: '#F7F7FF',
    light: '#495867'
  },
  neon: {
    primary: '#202030',
    secondary: '#39304A',
    tertiary: '#635C51',
    light: '#848C8E',
    medium: '#5D737E'// ,
    // dark: '#34162A'
  }
  // neon: {
  //   primary: '#39BFBD',
  //   secondary: '#4CE0B3',
  //   tertiary: '#FF5E79',
  //   light: '#F4EDF2',
  //   medium: '#B682A5',
  //   dark: '#34162A'
  // }
};

@Component({
  selector: "app-real-time",
  templateUrl: "real-time.page.html",
  styleUrls: ["real-time.page.scss"]
})
export class RealTimePage implements OnInit, AfterViewInit {

  constructor(
    private bobber: TheBobberService,
    private toast: ToastService,
    private weather: WeatherService,
    private logsService: LogsService,
    private theme: ThemeService
  ) {}

  ngAfterViewInit() {
    this.weather.getWeather().subscribe(data => {
      this.logsService.addMessage(data, "Weather");
    });
  }

  public ngOnInit() {}

  changeTheme(name) {
    this.theme.setTheme(themes[name]);
  }


}
