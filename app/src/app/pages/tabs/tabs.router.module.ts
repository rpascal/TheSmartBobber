import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { LogPage } from '../log/log.page';
import { RealTimePage } from '../real-time/real-time.page';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: '',
        redirectTo: '/tabs/(real-time:real-time)',
        pathMatch: 'full',
      },
      {
        path: 'real-time',
        outlet: 'real-time',
        component: RealTimePage
      },
      {
        path: 'log',
        outlet: 'log',
        component: LogPage
      }
    ]
  },
  {
    path: '',
    redirectTo: '/tabs/(real-time:real-time)',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class TabsPageRoutingModule {}
