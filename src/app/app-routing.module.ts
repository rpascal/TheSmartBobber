import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { environment } from '../environments/environment';

const routes: Routes = [
  {
    path: "app",
    loadChildren: "./pages/tabs/tabs.module#TabsPageModule",
    // canActivate: [BobberConnectedGuard],
    // canLoad: [BobberConnectedGuard]
  },
  {
    path: "connect-to-bobber",
    loadChildren:
      "./pages/connect-to-bobber/connect-to-bobber.module#ConnectToBobberPageModule"
  },
  {
    path: "",
    redirectTo: environment.realTimePage,
    pathMatch: "full"
  }
];
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
