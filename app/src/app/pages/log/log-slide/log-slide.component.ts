import { AfterViewInit, Component, Input, ViewChild } from '@angular/core';
import { NgbCarousel } from '@ng-bootstrap/ng-bootstrap';

import { Image } from '../../../core';

@Component({
  selector: "app-log-slide",
  templateUrl: "./log-slide.component.html",
  styleUrls: ["./log-slide.component.scss"]
})
export class LogSlideComponent implements AfterViewInit {
  @ViewChild(NgbCarousel) slides: NgbCarousel;

  @Input() images: Image[];

  @Input() taller = false;

  constructor() {}

  ngAfterViewInit() {
    if (this.slides) {
      this.slides.wrap = true;
      this.slides.interval = -1;
      this.slides.pause();
    }
  }
}
