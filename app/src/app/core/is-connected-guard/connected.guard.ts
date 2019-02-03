import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

import { CoreModule } from '../core.module';
import { TheBobberService } from '../the-bobber/the-bobber.service';
import { ToastService } from '../toast/toast.serivce';

@Injectable({
  providedIn: CoreModule
})
export class BobberConnectedGuard { // implements CanActivate, CanLoad {
  constructor(
    private bluetooth: TheBobberService,
    private router: Router,
    private toastService: ToastService

  ) {}

  // canActivate(
  //   next: ActivatedRouteSnapshot,
  //   state: RouterStateSnapshot
  // ): Observable<boolean> {
  //   return this.bluetooth.connectionStatus$.pipe(
  //     tap(connected => this.checkRedirect(connected))
  //   );
  // }

  // canLoad(route: Route): Observable<boolean> {
  //   return this.bluetooth.connectionStatus$.pipe(
  //     tap(connected => this.checkRedirect(connected))
  //   );
  // }

  // private checkRedirect(connected: boolean): void {
  //   // this.toastService.message(`Redirecting ${connected}`);
  //   if (!connected) {
  //     console.log("Not connected redirecting");
  //     this.router.navigate(["/connect-to-bobber"]);
  //   }
  // }
}
