import { AfterViewInit, ChangeDetectionStrategy, ChangeDetectorRef, Component, NgZone, OnInit, ViewChild, ViewChildren, QueryList } from '@angular/core';
import { MatTab, MatTabGroup, MatTabChangeEvent } from '@angular/material/tabs';
import { Observable } from 'rxjs';

import { FirebaseService, ILogDatabase, Image, NetworkService } from '../../core';
import { Slides, Slide } from '@ionic/angular';
import { LogSlideComponent } from './log-slide/log-slide.component';

@Component({
  selector: "app-log",
  templateUrl: "log.page.html",
  styleUrls: ["log.page.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class LogPage implements OnInit, AfterViewInit {
  @ViewChild("tabs") tabs: MatTabGroup;

  @ViewChildren("tabOneSlides") tabOneSlides: QueryList<LogSlideComponent>;
  @ViewChild("tabTwoSlide") tabTwoSlide: LogSlideComponent;

  selectedTab = 1;

  status: Observable<boolean>;
  networkStatus = false;

  logs: ILogDatabase[];
  uncategorizedImages: Observable<Image[]>;

  constructor(
    private fb: FirebaseService,
    private network: NetworkService,
    private cd: ChangeDetectorRef,
    private zone: NgZone
  ) { }

  ngOnInit() {
    this.status = this.network.status.asObservable();


    this.fb.getLogs().subscribe(logs => {
      this.logs = logs;
      // this.cd.detectChanges();
    })

    this.uncategorizedImages = this.fb.getUncategorizedImages();

    this.network.status.asObservable().subscribe(status => {
      this.networkStatus = status;
      this.zone.run(() => {
        this.cd.detectChanges();
      });
    });
  }

  ngAfterViewInit() {

    this.tabs.selectedTabChange.subscribe((ev:MatTabChangeEvent) => {
      console.log(this.selectedTab, ev)
      if (ev.index == 0) {
        this.tabOneSlides.forEach(item => item.refresh());
      } else {
        this.tabTwoSlide.refresh();
      }
      // this.cd.detectChanges();
    })

    setTimeout(() => {
      this.selectedTab = 0;
      this.cd.detectChanges();
    }, 250);
  }
}
