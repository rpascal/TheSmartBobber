import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { BobberConnectedGuard } from './core/is-connected-guard/connected.guard';

const routes: Routes = [
  {
    path: "tabs",
    loadChildren: "./pages/tabs/tabs.module#TabsPageModule",
    canActivate: [BobberConnectedGuard],
    canLoad: [BobberConnectedGuard]
  },
  {
    path: "connect-to-bobber",
    loadChildren:
      "./pages/connect-to-bobber/connect-to-bobber.module#ConnectToBobberPageModule"
  },
  {
    path: "",
    redirectTo: "/tabs",
    pathMatch: "full"
  }
];
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
