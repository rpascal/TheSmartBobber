import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BiteGraphComponent } from './bite-graph.component';

describe('BiteGraphComponent', () => {
  let component: BiteGraphComponent;
  let fixture: ComponentFixture<BiteGraphComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BiteGraphComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BiteGraphComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
