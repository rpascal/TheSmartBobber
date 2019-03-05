import { Component, OnInit, Input, ViewChild, ChangeDetectorRef, ChangeDetectionStrategy, OnDestroy, AfterViewInit } from '@angular/core';
import { Observable } from 'rxjs';
import { Image } from '../../../core';
import { Slides } from '@ionic/angular';
import { NgbCarousel } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-log-slide',
  templateUrl: './log-slide.component.html',
  styleUrls: ['./log-slide.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class LogSlideComponent implements OnInit, OnDestroy, AfterViewInit {

  @ViewChild(Slides) slides: NgbCarousel;

  @Input() images: Image[];

  // slides: Slides;

  // @ViewChild(Slides) set slidesvc(slides) {
  //   this.slides = slides;
  // }

  slideOpts = {
    loop: true,
    autoHeight: true,
    preloadImages: false,
    lazy: true,
    on: {
      init: () => {
        console.log('swiper initialized');
      },
    },
  };


  constructor(private cd: ChangeDetectorRef) { }

  ngOnInit() {

  }

  ngAfterViewInit() {
    console.log(this.slides);
    if (this.slides) {
      this.slides.wrap = true;
      this.slides.pause();
    }
    // this.slides.options = this.slideOpts;
    // this.slides.pager = true;
    // console.log("LogSlideComponent ngAfterViewInit", this.slides);

    // this.slides.update();
  }

  ngOnDestroy() {
    console.log("LogSlideComponent destory");
  }

  async refresh() {
    try {
      // this.slides.options = this.slideOpts;
      // this.slides.pager = true;
      // const d = await this.slides.update();
      // console.log(d);
    } catch (err) {
      console.error(err);
    }
    this.cd.detectChanges();
  }

}
