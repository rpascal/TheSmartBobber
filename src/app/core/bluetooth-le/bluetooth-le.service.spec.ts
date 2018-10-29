import { TestBed } from '@angular/core/testing';

import { BluetoothLEService } from './bluetooth-le.service';

describe('BluetoothLEService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: BluetoothLEService = TestBed.get(BluetoothLEService);
    expect(service).toBeTruthy();
  });
});
