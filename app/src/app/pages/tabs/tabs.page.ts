import { AfterViewInit, Component, ViewChild } from '@angular/core';

import { SecretOverlayComponent } from '../../shared/secret-overlay/secret-overlay.component';

@Component({
  selector: "app-tabs",
  templateUrl: "tabs.page.html",
  styleUrls: ["tabs.page.scss"]
})
export class TabsPage implements AfterViewInit {
  @ViewChild("secret") secret: SecretOverlayComponent;

  private timer: NodeJS.Timeout;
  private count = 0;
  constructor() {}

  ngAfterViewInit() {}

  tabsBar() {
    if (this.timer) {
      clearTimeout(this.timer);
    } else {
    }

    this.timer = setTimeout(() => {
      this.count = 0;
    }, 500);

    if (++this.count >= 40) {
      this.count = 0;
      clearTimeout(this.timer);
      this.secret.present(null);
    }
  }
}
