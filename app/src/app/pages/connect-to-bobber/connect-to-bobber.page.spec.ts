import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConnectToBobberPage } from './connect-to-bobber.page';

describe('ConnectToBobberPage', () => {
  let component: ConnectToBobberPage;
  let fixture: ComponentFixture<ConnectToBobberPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConnectToBobberPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConnectToBobberPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
