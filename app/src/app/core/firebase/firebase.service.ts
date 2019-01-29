import { Injectable } from '@angular/core';
import { AngularFirestore, AngularFirestoreCollection, AngularFirestoreDocument } from '@angular/fire/firestore';
import { BehaviorSubject } from 'rxjs';
import { tap } from 'rxjs/operators';

import { CoreModule } from '../core.module';
import { IWeather } from '../weather/weather.service';

export interface Bite {
  value: number;
  timestamp: Date;
}
export interface Temp {
  value: number;
  timestamp: Date;
}

export interface Log {
  title: string;
  description: string;
  timestamp: Date;
  temps?: Temp[];
  bites?: Bite[];
}

@Injectable({
  providedIn: CoreModule
})
export class FirebaseService {
  activelyLogging = new BehaviorSubject<boolean>(false);

  private activeLog: AngularFirestoreDocument<Log>;

  bitesCollection: AngularFirestoreCollection<Bite>;
  tempsCollection: AngularFirestoreCollection<Temp>;
  weatherCollection: AngularFirestoreCollection<IWeather>;

  constructor(private afs: AngularFirestore) {}

  createNewLog() {
    this.activeLog = this.afs.doc<Log>(`logs/${this.afs.createId()}`);
    this.activeLog.set({
      title: "Example",
      description: "Example Desciption",
      timestamp: new Date()
    });

    this.bitesCollection = this.activeLog.collection<Bite>("bite");
    this.tempsCollection = this.activeLog.collection<Temp>("temp");
    this.weatherCollection = this.activeLog.collection<IWeather>("weather");
    this.activelyLogging.next(true);
  }

  endLog() {
    delete this.activeLog
    delete this.bitesCollection;
    delete this.tempsCollection;
    delete this.weatherCollection;
    this.activelyLogging.next(false);
  }


  biteTap() {
    return tap((value: number) => {
      console.log(this.bitesCollection);
      if (this.bitesCollection) {
        this.bitesCollection.add({ value: value, timestamp: new Date() });
      }
    });
  }

  tempTap() {
    return tap((value: number) => {
      if (this.tempsCollection) {
        this.tempsCollection.add({ value: value, timestamp: new Date() });
      }
    });
  }

  weatherTap() {
    return tap((value: IWeather) => {
      if (this.weatherCollection) {
        this.weatherCollection.add({ ...value, timestamp: new Date() });
      }
    });
  }

  monitorRecentBites() {
    // , ref => ref.orderBy("timestamp").limit(10)
    return this.afs.collection<Bite>("bite").valueChanges();
  }
}
