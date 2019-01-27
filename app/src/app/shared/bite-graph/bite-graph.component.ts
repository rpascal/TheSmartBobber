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
    this.lineChart = new Chart(this.lineCanvas.nativeElement, {
      type: "line",
      options: {
        legend: {
          display: false
        },
        title: {
          display: false
        }
      },
      data: {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
          {
            label: "",
            // lineTension: 0.1,
            data: [65, 13, 80, 0, 56, 5, 40]
          }
        ]
      }
    });

    setInterval(() => {
      const data = [];
      for (let i = 0; i < 10; i++) {
        data.push(Math.floor(Math.random() * 10));
      }
      console.log(data);
      this.lineChart.data.labels = data;
      this.lineChart.data.datasets[0].data = data;
      this.lineChart.update();
    }, 5000);

    // this.fb
    //   .monitorRecentBites()
    //   .pipe(map(data => data.map(x => +x.value)))
    //   .subscribe(data => {
    //     console.log(data, this.lineChart);
    //     this.lineChart.data.datasets[0].data = data;
    //     this.lineChart.update();
    //   });
  }
}
