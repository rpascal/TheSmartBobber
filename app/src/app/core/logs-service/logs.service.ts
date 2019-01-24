import { Injectable } from '@angular/core';
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
  private logs: ILogMessage[] = [];

  constructor() { }

  addMessage(mes: any, title?: string) {
    this.logs.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "normal"
    });
  }

  addError(mes: any, title?: string) {
    this.logs.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "error"
    });
  }

  addWarn(mes: any, title?: string) {
    this.logs.push({
      title: title,
      data: mes,
      timestamp: Date.now(),
      type: "warn"
    });
  }

  getMessages(): ILogMessage[] {
    return this.logs;
  }
  clear(): void {
    this.logs = [];
  }

}
