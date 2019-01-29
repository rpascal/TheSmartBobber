import { Component, OnInit } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

import { FirebaseService } from '../../core/firebase/firebase.service';

@Component({
  selector: "app-manage-log",
  templateUrl: "./manage-log.component.html",
  styleUrls: ["./manage-log.component.scss"]
})
export class ManageLogComponent implements OnInit {
  activelyLogging: BehaviorSubject<boolean>;

  constructor(private fb: FirebaseService) {}

  ngOnInit() {
    this.activelyLogging = this.fb.activelyLogging;
  }

  startLog() {
    this.fb.createNewLog();
  }

  endLog() {
    this.fb.endLog();
  }
}
