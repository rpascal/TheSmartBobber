import { Injectable } from '@angular/core';

export interface ILogMessage {
  title?: string;
  data: any;
  timestamp: number;
  type: "warn" | "error" | "normal";
}

@Injectable()
export class LogsService {
  private logs: ILogMessage[] = [];

  constructor() {}

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
}
