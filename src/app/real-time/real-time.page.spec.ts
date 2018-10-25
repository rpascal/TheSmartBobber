import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RealTimePage } from './real-time.page';

describe('RealTimePage', () => {
  let component: RealTimePage;
  let fixture: ComponentFixture<RealTimePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [RealTimePage],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    }).compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RealTimePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
