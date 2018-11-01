import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, CanLoad, Route, Router, RouterStateSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { tap } from 'rxjs/operators';

import { BluetoothSerialService } from '../bluetooth-serial/bluetooth-serial.service';
import { CoreModule } from '../core.module';

@Injectable({
  providedIn: CoreModule
})
export class BobberConnectedGuard implements CanActivate, CanLoad {
  constructor(
    private bluetooth: BluetoothSerialService,
    private router: Router
  ) {}

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ): Observable<boolean> {
    return this.bluetooth.connectionStatus$.pipe(
      tap(connected => this.checkRedirect(connected))
    );
  }

  canLoad(route: Route): Observable<boolean> {
    return this.bluetooth.connectionStatus$.pipe(
      tap(connected => this.checkRedirect(connected))
    );
  }

  private checkRedirect(connected: boolean): void {
    if (!connected) {
      this.router.navigate(["/connect-to-bobber"]);
    }
  }
}
