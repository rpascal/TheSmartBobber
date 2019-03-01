import { Component, OnDestroy, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { Subject } from 'rxjs';
import { takeUntil, scan } from 'rxjs/operators';

import { ILogMessage, LogsService } from '../../../core';


@Component({
  selector: "app-logs",
  templateUrl: "./logs.component.html",
  styleUrls: ["./logs.component.scss"]
})
export class LogsComponent implements OnInit, OnDestroy {
  logs: ILogMessage[] = [];
  private takeUntil = new Subject();

  constructor(
    private modalCtrl: ModalController,
    private logsService: LogsService
  ) { }

  ngOnInit() {
    this.logs = this.logsService.getMessages();
    this.logsService.logsSubject$
      .pipe(takeUntil(this.takeUntil),
        scan((acc, val) => {
          acc.push(val);
          return acc.slice(-20);
        }, []))
      .subscribe(data => {
        this.logs = data;
      });
  }
  ngOnDestroy() {
    this.takeUntil.next();
    this.takeUntil.complete();
  }

  dismiss() {
    this.modalCtrl.dismiss();
  }

  clear() {
    this.logsService.clear();
  }
}
