import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LogSlideComponent } from './log-slide.component';

describe('LogSlideComponent', () => {
  let component: LogSlideComponent;
  let fixture: ComponentFixture<LogSlideComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LogSlideComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LogSlideComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
