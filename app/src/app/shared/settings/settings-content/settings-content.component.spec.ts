import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SettingsContentComponent } from './settings-content.component';

describe('SettingsContentComponent', () => {
  let component: SettingsContentComponent;
  let fixture: ComponentFixture<SettingsContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SettingsContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SettingsContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
