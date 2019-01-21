import { TestBed } from '@angular/core/testing';

import { BluetoothSerialService } from './bluetooth-serial.service';

describe('BluetoothSerialService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: BluetoothSerialService = TestBed.get(BluetoothSerialService);
    expect(service).toBeTruthy();
  });
});
