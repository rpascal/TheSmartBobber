import { Injectable } from '@angular/core';
import { AngularFirestore, AngularFirestoreCollection } from '@angular/fire/firestore';
import { tap } from 'rxjs/operators';

import { CoreModule } from '../core.module';
import { IWeather } from '../weather/weather.service';

export interface Bite {
  value: string;
  timestamp: Date;
}
export interface Temp {
  value: string;
  timestamp: Date;
}

@Injectable({
  providedIn: CoreModule
})
export class FirebaseService {
  bitesCollection: AngularFirestoreCollection<Bite>;
  tempsCollection: AngularFirestoreCollection<Temp>;
  weatherCollection: AngularFirestoreCollection<IWeather>;

  constructor(private afs: AngularFirestore) {
    this.bitesCollection = afs.collection<Bite>("bite");
    this.tempsCollection = afs.collection<Temp>("temp");
    this.weatherCollection = afs.collection<IWeather>("weather");
  }

  biteTap() {
    return tap((value: string) => {
      this.bitesCollection.add({ value: value, timestamp: new Date() });
    });
  }

  tempTap() {
    return tap((value: string) => {
      this.tempsCollection.add({ value: value, timestamp: new Date() });
    });
  }

  weatherTap() {
    return tap((value: IWeather) => {
      this.weatherCollection.add({ ...value, timestamp: new Date() });
    });
  }

  monitorRecentBites() {
    // , ref => ref.orderBy("timestamp").limit(10)
    return this.afs.collection<Bite>("bite").valueChanges();
  }



}
