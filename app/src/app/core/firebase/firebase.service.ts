import { Injectable } from '@angular/core';
import { AngularFirestore, AngularFirestoreCollection, AngularFirestoreDocument } from '@angular/fire/firestore';
import { Storage } from '@capacitor/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { map, tap } from 'rxjs/operators';

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
export interface Image {
  url: string;
}

export interface Solenoid {
  value: number;
  timestamp: Date;
}

export interface Log {
  title: string;
  description: string;
  timestamp: Date;
  weather?: IWeather;
  endDate?: Date;
  temps?: Temp[];
  bites?: Bite[];
  images?: Image[];
}
export interface ILogDatabase {
  title: string;
  description: string;
  timestamp?: Date;
  weather?: IWeather;
  endDate?: Date;
  confirmedBites: number;
  averageTemp: number;
  images?: Observable<Image[]>;
  // temps?: Observable<number>;
  // bites?: Observable<number>;
}

@Injectable({
  providedIn: CoreModule
})
export class FirebaseService {
  private readonly log_uid = "log_uid";

  activelyLogging = new BehaviorSubject<boolean>(false);

  private activeLog: AngularFirestoreDocument<Log>;

  bitesCollection: AngularFirestoreCollection<Bite>;
  tempsCollection: AngularFirestoreCollection<Temp>;
  solenoidCollection: AngularFirestoreCollection<Solenoid>;

  weatherCollection: AngularFirestoreCollection<IWeather>;

  constructor(private afs: AngularFirestore) { }

  async appLoad() {
    try {
      const log_uid = (await Storage.get({ key: this.log_uid })).value;
      if (log_uid) {
        this.setupActiveLog(log_uid);
      }
    } catch { }
  }

  async createNewLog(title: string, description: string, weather?: IWeather) {
    const uid = this.afs.createId();
    this.setupActiveLog(uid);
    await Storage.set({
      key: this.log_uid,
      value: uid
    });

    await this.activeLog.set({
      title: title,
      description: description,
      weather: weather,
      timestamp: new Date()
    });
  }

  private setupActiveLog(uid: string) {
    this.activeLog = this.afs.doc<Log>(`logs/${uid}`);
    this.bitesCollection = this.activeLog.collection<Bite>("bite");
    this.tempsCollection = this.activeLog.collection<Temp>("temp");
    this.solenoidCollection = this.activeLog.collection<Temp>("solenoid");
    this.weatherCollection = this.activeLog.collection<IWeather>("weather");
    this.activelyLogging.next(true);
  }

  async endLog() {
    await this.activeLog.update({
      endDate: new Date()
    });
    delete this.activeLog;
    delete this.bitesCollection;
    delete this.tempsCollection;
    delete this.solenoidCollection;
    delete this.weatherCollection;
    this.activelyLogging.next(false);
    await Storage.clear();
  }

  biteTap() {
    return tap((value: number) => {
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

  solenoidTap() {
    return tap((value: number) => {
      if (this.solenoidCollection && value === 1) {
        this.solenoidCollection.add({ value: value, timestamp: new Date() });
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

  getLogs(): Observable<ILogDatabase[]> {
    return this.afs
      .collection<ILogDatabase>("logs", ref => ref.orderBy("timestamp", "desc"))
      .snapshotChanges()
      .pipe(
        map(data => {
          return data.map(item => {
            const log = item.payload.doc.data() as ILogDatabase;
            const id = item.payload.doc.id;

            return {
              ...log,
              images: this.afs
                .collection<Image>(`logs/${id}/images`)
                .valueChanges()
            };
          });
        })
      );
  }

  attachImage(url: string) {
    if (this.activeLog) {
      this.activeLog.collection<Image>("images").add({
        url: url,
        // timestamp: new Date()
      })
    } else {
      this.afs.collection("uncategorizedImages").add({
        url: url,
        // timestamp: new Date()
      })
    }

  }
}
