import { AfterViewInit, ChangeDetectionStrategy, ChangeDetectorRef, Component, NgZone, OnInit, ViewChild } from '@angular/core';
import { MatTabGroup } from '@angular/material/tabs';
import { Observable } from 'rxjs';

import { FirebaseService, ILogDatabase, Image, NetworkService } from '../../core';

@Component({
  selector: "app-log",
  templateUrl: "log.page.html",
  styleUrls: ["log.page.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class LogPage implements OnInit, AfterViewInit {
  @ViewChild("tabs") tabs: MatTabGroup;

  selectedTab = 0;

  status: Observable<boolean>;
  networkStatus = false;

  logs$: Observable<ILogDatabase[]>;
  uncategorizedImages: Observable<Image[]>;

  constructor(
    private fb: FirebaseService,
    private network: NetworkService,
    private cd: ChangeDetectorRef,
    private zone: NgZone
  ) {}

  ngOnInit() {
    this.status = this.network.status.asObservable();
    this.logs$ = this.fb.getLogs();
    this.uncategorizedImages = this.fb.getUncategorizedImages();

    this.network.status.asObservable().subscribe(status => {
      this.networkStatus = status;
      this.zone.run(() => {
        this.cd.detectChanges();
      });
    });
  }

  ngAfterViewInit() {
    setTimeout(() => {
      this.tabs.realignInkBar();
      this.cd.detectChanges();
    }, 250);
  }
}
