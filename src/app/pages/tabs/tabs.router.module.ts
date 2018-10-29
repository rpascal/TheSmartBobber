import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { TabsPage } from './tabs.page';
import { RealTimePage } from '../real-time/real-time.page';
import { LogPage } from '../log/log.page';
import { ControlsPage } from '../controls/controls.page';

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
      },
      {
        path: 'controls',
        outlet: 'controls',
        component: ControlsPage
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