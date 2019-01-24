import { Injectable } from '@angular/core';

@Injectable()
export class MessagesService {
  private messages: any[] = [];

  constructor() {}

  addMessage(mes: any, title?: string) {
    this.messages.push({
      title: title,
      data: mes,
      timestamp: Date.now()
    });
  }

  getMessages() {
    return this.messages;
  }
}
