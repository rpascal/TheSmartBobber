import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SecretOverlayComponent } from './secret-overlay.component';

describe('SecretOverlayComponent', () => {
  let component: SecretOverlayComponent;
  let fixture: ComponentFixture<SecretOverlayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SecretOverlayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SecretOverlayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
