import { TestBed } from '@angular/core/testing';

import { TheBobberService } from './the-bobber.service';

describe('TheBobberService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: TheBobberService = TestBed.get(TheBobberService);
    expect(service).toBeTruthy();
  });
});
