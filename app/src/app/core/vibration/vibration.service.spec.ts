import { TestBed } from '@angular/core/testing';

import { VibrationService } from './vibration.service';

describe('VibrationService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: VibrationService = TestBed.get(VibrationService);
    expect(service).toBeTruthy();
  });
});
