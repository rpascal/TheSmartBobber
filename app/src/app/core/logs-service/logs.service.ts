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

  get reveredLogs(): ILogMessage[] {
    return this.logs.slice().reverse();
  }
  constructor() {
    this.logsSubject$ = this.logsSubject.asObservable();
  }

  logTap(title?: string) {
    return tap((value: any) => {
      this.addMessage(value, title);
    });
  }

  addMessage(mes: any, title?: string) {
    this.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "normal"
    });
  }

  addError(mes: any, title?: string) {
    this.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "error"
    });
  }

  addWarn(mes: any, title?: string) {
    this.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "warn"
    });
  }

  private push(data: ILogMessage) {
    this.logs.push(data);
    if (this.logs.length > 50) {
      this.logs.shift();
    }
    this.logsSubject.next(this.reveredLogs);
  }

  getMessages() {
    return this.reveredLogs;
  }

  clear(): void {
    this.logs = [];
    this.logsSubject.next(this.reveredLogs);
  }
}
