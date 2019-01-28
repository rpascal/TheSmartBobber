import { AfterViewInit, Component, OnInit, ViewChild } from '@angular/core';
import { Chart } from 'chart.js';

import { FirebaseService } from '../../core/firebase/firebase.service';

@Component({
  selector: "app-bite-graph",
  templateUrl: "./bite-graph.component.html",
  styleUrls: ["./bite-graph.component.scss"]
})
export class BiteGraphComponent implements OnInit, AfterViewInit {
  @ViewChild("lineCanvas") lineCanvas;
  lineChart: any;

  constructor(private fb: FirebaseService) {}

  ngOnInit() {}

  ngAfterViewInit() {
    const initLabels = [];
    const initData = [];

    const max = 25;

    for (let i = 0; i < max; i++) {
      initLabels.push("");
      initData.push(Math.floor(Math.random() * 10));
    }

    this.lineChart = new Chart(this.lineCanvas.nativeElement, {
      type: "line",
      options: {
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
              display: true,
              ticks: {
                beginAtZero: true,
                steps: 10,
                stepValue: 1,
                max: 10
              }
            }
          ]
        },
        elements: {
          line: {
            backgroundColor: "hsl(5, 100%, 50%)"
          },
          point: {
            radius: 0
          }
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

    setInterval(() => {
      const newValue = Math.floor(Math.random() * 11);

      this.addDataItem(newValue);
      this.removeOldItem();

      this.lineChart.options.elements.line.backgroundColor = this.getColor(newValue / 10);
      this.lineChart.update();
    }, 250);

    // this.fb
    //   .monitorRecentBites()
    //   .pipe(map(data => data.map(x => +x.value)))
    //   .subscribe(data => {
    //     console.log(data, this.lineChart);
    //     this.lineChart.data.datasets[0].data = data;
    //     this.lineChart.update();
    //   });
  }

  getColor(value) {
    // value from 0 to 1
    const hue = ((1 - value) * 120).toString(10);
    return ["hsl(", hue, ",100%,50%)"].join("");
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
