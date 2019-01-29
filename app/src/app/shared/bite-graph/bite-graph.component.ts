import { AfterViewInit, Component, OnInit, ViewChild } from '@angular/core';
import { Chart } from 'chart.js';

import { TheBobberService } from '../../core';
import { FirebaseService } from '../../core/firebase/firebase.service';

@Component({
  selector: "app-bite-graph",
  templateUrl: "./bite-graph.component.html",
  styleUrls: ["./bite-graph.component.scss"]
})
export class BiteGraphComponent implements OnInit, AfterViewInit {
  @ViewChild("lineCanvas") lineCanvas;
  lineChart: any;

  constructor(private fb: FirebaseService, private bobber: TheBobberService) {}

  ngOnInit() {}

  ngAfterViewInit() {
    const initLabels = [];
    const initData = [];

    const max = 25;

    for (let i = 0; i < max; i++) {
      initLabels.push("");
      initData.push(0);
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
            backgroundColor: "rgba(0,255,0,.1)"
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

    this.bobber.bite$.subscribe((data: number) => {
      this.addDataItem(data);
      this.removeOldItem();
      this.setBackgroundColor(data);
      this.lineChart.update();
    });

    // this.fb
    //   .monitorRecentBites()
    //   .pipe(map(data => data.map(x => +x.value)))
    //   .subscribe(data => {
    //     console.log(data, this.lineChart);
    //     this.lineChart.data.datasets[0].data = data;
    //     this.lineChart.update();
    //   });
  }

  setBackgroundColor(value) {
    const r = value < 4 ? 0 : 255;
    const g = value > 7 ? 0 : 255;
    this.lineChart.options.elements.line.backgroundColor = `rgba(${r},${g},0,.1)`;
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
