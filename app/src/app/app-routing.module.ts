import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { environment } from '../environments/environment';

const routes: Routes = [
  {
    path: "app",
    loadChildren: "./pages/tabs/tabs.module#TabsPageModule",
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
export class AppRoutingModule {}
