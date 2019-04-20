import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'temperatureConverter'
})
export class TemperatureConverterPipe implements PipeTransform {

  transform(value: number, unit: string) {
    if (value && !isNaN(value)) {
      if (unit === 'C') {
        const tempareature = (value - 32) / 1.8;
        return tempareature.toFixed(2);
      }
      if (unit === 'F') {
        const tempareature = (value * 1.8) + 32;
        return tempareature.toFixed(2);
      }
    }
    return;
  }

}
