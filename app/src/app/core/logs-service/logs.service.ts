import { Injectable } from '@angular/core';
import { Observable, Subject } from 'rxjs';
import { tap } from 'rxjs/operators';

import { CoreModule } from '../core.module';

export interface ILogMessage {
  title?: string;
  data: any;
  timestamp: number;
  type: "warn" | "error" | "normal";
}

@Injectable({
  providedIn: CoreModule
})
export class LogsService {
  private logsSubject = new Subject<ILogMessage[]>();
  logsSubject$: Observable<ILogMessage[]>;

  private logs: ILogMessage[] = [];

  constructor() {
    this.logsSubject$ = this.logsSubject.asObservable();
  }

  logTap(title?: string) {
    return tap((value: any) => {
      this.addMessage(value, title);
    });
  }

  addMessage(mes: any, title?: string) {
    this.logs.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "normal"
    });
    this.logsSubject.next(this.logs);
  }

  addError(mes: any, title?: string) {
    this.logs.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "error"
    });
    this.logsSubject.next(this.logs);
  }

  addWarn(mes: any, title?: string) {
    this.logs.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "warn"
    });
    this.logsSubject.next(this.logs);
  }

  getMessages() {
    return this.logs;
  }

  clear(): void {
    this.logs = [];
    this.logsSubject.next(this.logs);
  }
}
