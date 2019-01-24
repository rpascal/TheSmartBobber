import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MessagesPopoverComponent } from './messages-popover.component';

describe('MessagesPopoverComponent', () => {
  let component: MessagesPopoverComponent;
  let fixture: ComponentFixture<MessagesPopoverComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MessagesPopoverComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MessagesPopoverComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
