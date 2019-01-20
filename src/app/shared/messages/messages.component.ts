import { ChangeDetectionStrategy, ChangeDetectorRef, Component, OnInit } from '@angular/core';

@Component({
  selector: "app-messages",
  templateUrl: "./messages.component.html",
  styleUrls: ["./messages.component.scss"],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class MessagesComponent implements OnInit {
  private messages: any[] = [];

  constructor(private cd: ChangeDetectorRef) {}

  ngOnInit() {
  }

  addMessage(mes: any, title?: string) {
    this.messages.push({
      title: title,
      data: mes,
      timestamp: Date.now()
    });
    this.cd.detectChanges();
  }
}
