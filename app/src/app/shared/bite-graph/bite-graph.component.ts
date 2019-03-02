import { AfterViewInit, Component, OnDestroy, OnInit, ViewChild } from '@angular/core';
import { Chart } from 'chart.js';
import * as chartjs_plugin_annotationas from 'chartjs-plugin-annotation';

import { environment } from '../../../environments/environment';
import { TheBobberService } from '../../core';

@Component({
  selector: "app-bite-graph",
  templateUrl: "./bite-graph.component.html",
  styleUrls: ["./bite-graph.component.scss"]
})
export class BiteGraphComponent implements OnInit, AfterViewInit, OnDestroy {
  private readonly MAX = environment.bitePeak;
  private readonly MIN = environment.biteMin;
  private readonly MAX_X = environment.bite_graph_max_x;

  get greenUpper() {
    return this.MIN + Math.floor((this.MAX - this.MIN) * 0.2);
  }
  get yellowUpper() {
    return this.MIN + Math.floor((this.MAX - this.MIN) * 0.8);
  }

  @ViewChild("lineCanvas") lineCanvas;
  lineChart: any;

  constructor(private bobber: TheBobberService) {
    // Need to do this so stupid auto remover wont remove import
    const c = chartjs_plugin_annotationas;
  }

  ngOnInit() {}

  ngOnDestroy() {}

  ngAfterViewInit() {
    const initLabels = [];
    const initData = [];

    for (let i = 0; i < this.MAX_X; i++) {
      initLabels.push("");
      initData.push(0);
    }

    this.lineChart = new Chart(this.lineCanvas.nativeElement, {
      type: "line",
      options: {
        animation: false,
        responsive: true,
        legend: {
          display: false
        },
        title: {
          display: false
        },
        scales: {
          yAxes: [
            {
              display: false,
              ticks: {
                // beginAtZero: true,
                steps: this.MAX,
                stepValue: 1,
                max: this.MAX,
                min: this.MIN
              }
            }
          ]
        },
        elements: {
          line: {
            backgroundColor: "rgba(0,255,0,.1)"
          },
          point: {
            radius: 0
          }
        },
        annotation: {
          annotations: [
            {
              type: "box",
              xScaleID: "x-axis-0",
              yScaleID: "y-axis-0",
              yMin: this.MIN,
              yMax: this.greenUpper,
              backgroundColor: "rgba(0, 255, 0, 0.05)",
              borderColor: "rgba(0, 255, 0,0.05)",
              borderWidth: 0
            },
            {
              type: "box",
              xScaleID: "x-axis-0",
              yScaleID: "y-axis-0",
              yMin: this.greenUpper,
              yMax: this.yellowUpper,
              backgroundColor: "rgba(255, 255, 0, 0.05)",
              borderColor: "rgba(255, 255, 0, 0.05)",
              borderWidth: 0
            },
            {
              type: "box",
              xScaleID: "x-axis-0",
              yScaleID: "y-axis-0",
              yMin: this.yellowUpper,
              yMax: this.MAX,
              backgroundColor: "rgba(255, 0, 0, 0.05)",
              borderColor: "rgba(255, 0, 0, 0.05)",
              borderWidth: 0
            }
          ]
        }
      },
      data: {
        labels: initLabels,
        datasets: [
          {
            data: initData
          }
        ]
      }
    });

    this.bobber.bite$.subscribe((data: number) => {
      this.addDataItem(data);
      this.removeOldItem();
      this.setBackgroundColor(data);
      this.lineChart.update();
    });
  }

  setBackgroundColor(value) {
    const r = value <= this.greenUpper ? 0 : 255;
    const g = value > this.yellowUpper ? 0 : 255;
    this.lineChart.options.elements.line.backgroundColor = `rgba(${r},${g},0,.5)`;
  }

  addDataItem(data) {
    if (!this.lineChart) {
      return;
    }
    this.lineChart.data.labels.push("");
    this.lineChart.data.datasets.forEach(dataset => {
      dataset.data.push(data);
    });
  }

  removeOldItem() {
    if (!this.lineChart) {
      return;
    }
    this.lineChart.data.labels.shift();
    this.lineChart.data.datasets.forEach(dataset => {
      dataset.data.shift();
    });
  }
}
