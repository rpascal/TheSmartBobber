import { Injectable } from '@angular/core';
import { Storage } from '@capacitor/core';

import { CoreModule } from '../core.module';
import { LogsService } from '../logs-service/logs.service';

@Injectable({
  providedIn: CoreModule
})
export class StorageService {
  constructor(private log: LogsService) {}

  get(key: string) {
    return new Promise<any>(async (resolve, reject) => {
      try {
        const value = (await Storage.get({ key: key })).value;
        if (value) {
          resolve(value);
        }
      } catch {
        this.log.addError(`Error getting ${key} from storage`);
      }
      reject();
    });
  }

  getBoolean(key: string) {
    return new Promise<boolean>(async (resolve, reject) => {
      try {
        const value = await this.get(key);
        resolve((value === "true"));
      } catch {
        this.log.addError(`Error getting ${key} from storage`);
      }
      reject();
    });
  }

  async set(key: string, value: any) {
    try {
      await Storage.set({
        key: key,
        value: value
      });
    } catch {
      this.log.addError(`Error setting ${key} to storage`);
    }
  }

  async clear() {
    try {
      await Storage.clear();
    } catch {
      this.log.addError(`Error clearing storage`);
    }
  }
}
