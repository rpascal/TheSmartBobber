import { ChangeDetectionStrategy, ChangeDetectorRef, Component, OnDestroy, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

import { ILogMessage, LogsService } from '../../../core';


@Component({
  selector: "app-logs",
  templateUrl: "./logs.component.html",
  styleUrls: ["./logs.component.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class LogsComponent implements OnInit, OnDestroy {
  logs: ILogMessage[] = [];
  private takeUntil = new Subject();

  constructor(
    private modalCtrl: ModalController,
    private logsService: LogsService,
    private cd: ChangeDetectorRef
  ) { }

  ngOnInit() {
    this.logs = this.logsService.getMessages();
    this.logsService.logsSubject$
      .pipe(takeUntil(this.takeUntil))
      .subscribe(data => {
        this.logs = data;
        this.cd.detectChanges();
      });
  }
  ngOnDestroy() {
    this.takeUntil.next();
    this.takeUntil.complete();
    delete this.takeUntil;
    delete this.logs;
  }

  dismiss() {
    this.modalCtrl.dismiss();
  }

  clear() {
    this.logsService.clear();
  }
}
