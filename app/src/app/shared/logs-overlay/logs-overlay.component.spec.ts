import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LogsOverlayComponent } from './logs-overlay.component';

describe('LogsOverlayComponent', () => {
  let component: LogsOverlayComponent;
  let fixture: ComponentFixture<LogsOverlayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LogsOverlayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LogsOverlayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
