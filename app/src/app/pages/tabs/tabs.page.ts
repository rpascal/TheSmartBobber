import { AfterViewInit, Component } from '@angular/core';

import { SoundsService } from '../../core/sounds/sounds.service';

@Component({
  selector: "app-tabs",
  templateUrl: "tabs.page.html",
  styleUrls: ["tabs.page.scss"]
})
export class TabsPage implements AfterViewInit {
  constructor(private audio: SoundsService) {}

  ngAfterViewInit() {
    // this.audio.preload("bell", "assets/audio/bell.mp3");
  }
}
