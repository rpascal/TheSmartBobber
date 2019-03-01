import { AfterViewInit, ChangeDetectionStrategy, ChangeDetectorRef, Component, NgZone, OnInit, ViewChild } from '@angular/core';
import { MatTab, MatTabGroup } from '@angular/material/tabs';
import { Observable, of } from 'rxjs';

import { FirebaseService, ILogDatabase, Image, NetworkService } from '../../core';

@Component({
  selector: "app-log",
  templateUrl: "log.page.html",
  styleUrls: ["log.page.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class LogPage implements OnInit, AfterViewInit {
  @ViewChild("tabs") tabs: MatTabGroup;
  @ViewChild("tab1") tab1: MatTab;

  selectedTab = 1;

  status: Observable<boolean>;
  networkStatus = false;

  logs$: Observable<ILogDatabase[]>;
  uncategorizedImages$: Observable<Image[]>;

  slideOpts = {
    loop: true,
    // height: 200,
    autoHeight: true,
    preloadImages: false,
    // Enable lazy loading
    lazy: true
  };

  constructor(
    private fb: FirebaseService,
    private network: NetworkService,
    private cd: ChangeDetectorRef,
    private zone: NgZone
  ) {}

  ngOnInit() {
    this.status = this.network.status.asObservable();
    this.logs$ = this.fb.getLogs();
    this.uncategorizedImages$ = this.fb.getUncategorizedImages();
    this.network.status.asObservable().subscribe(status => {
      this.networkStatus = status;
      this.zone.run(() => {
        this.cd.detectChanges();
      });
    });
  }

  ngAfterViewInit() {
    setTimeout(() => {
      this.selectedTab = 0;
      this.cd.detectChanges();
    }, 250);
  }

  getDummyLogs() {
    return of([
      {
        title: "Title",
        description: "Description",
        // timestamp:new Date(),
        confirmedBites: 2,
        averageTemp: 54,
        images: [
          {
            url:
              "https://yt3.ggpht.com/a-/AAuE7mCl2kZ_iSnaMV1CcJL36EZG_jMDK3Eq86ZL6w=s900-mo-c-c0xffffffff-rj-k-no"
          },
          {
            url:
              "https://thumbor.forbes.com/thumbor/1280x868/https%3A%2F%2Fblogs-images.forbes.com%2Fdavidphelan%2Ffiles%2F2018%2F08%2Fapple-iphone-x-invite-2017-1200x719.jpeg"
          },
          {
            url:
              "https://pbs.twimg.com/profile_images/1059888693945630720/yex0Gcbi_400x400.jpg"
          }
        ]
      },
      {
        title: "Title 2",
        description: "Description 2",
        // timestamp:new Date(),
        confirmedBites: 2,
        averageTemp: 54,
        images: []
      }
    ]);
  }
}
