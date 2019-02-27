import { Component, OnInit } from '@angular/core';
import { Observable, of } from 'rxjs';
import { tap } from 'rxjs/operators';

import { FirebaseService, ILogDatabase, Image } from '../../core';

@Component({
  selector: "app-log",
  templateUrl: "log.page.html",
  styleUrls: ["log.page.scss"]
})
export class LogPage implements OnInit {
  logs$: Observable<ILogDatabase[]>;
  uncategorizedImages$: Observable<Image[]>;

  slideOpts = {
    loop: true,
    // height: 200,
    autoHeight: true,
    preloadImages: false,
    // Enable lazy loading
    lazy: true
  };

  constructor(private fb: FirebaseService) { }

  ngOnInit() {
    this.logs$ = this.fb.getLogs().pipe(tap(data => console.log("Tap", data)));
    this.uncategorizedImages$ = this.fb.getUncategorizedImages();
  }


  getDummyLogs() {
    return of([
      {
        title: "Title",
        description: "Description",
        // timestamp:new Date(),
        confirmedBites: 2,
        averageTemp: 54,
        images: [
          { url: "https://yt3.ggpht.com/a-/AAuE7mCl2kZ_iSnaMV1CcJL36EZG_jMDK3Eq86ZL6w=s900-mo-c-c0xffffffff-rj-k-no" },
          { url: "https://thumbor.forbes.com/thumbor/1280x868/https%3A%2F%2Fblogs-images.forbes.com%2Fdavidphelan%2Ffiles%2F2018%2F08%2Fapple-iphone-x-invite-2017-1200x719.jpeg" },
          { url: "https://pbs.twimg.com/profile_images/1059888693945630720/yex0Gcbi_400x400.jpg" }
        ]
      },
      {
        title: "Title 2",
        description: "Description 2",
        // timestamp:new Date(),
        confirmedBites: 2,
        averageTemp: 54,
        images: [
        ]
      }
    ]);
  }

}
