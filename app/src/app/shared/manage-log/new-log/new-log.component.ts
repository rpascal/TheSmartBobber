import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ModalController } from '@ionic/angular';

import { FirebaseService, WeatherService } from '../../../core';

@Component({
  selector: "app-new-log",
  templateUrl: "./new-log.component.html",
  styleUrls: ["./new-log.component.scss"]
})
export class NewLogComponent implements OnInit {
  form: FormGroup;

  constructor(
    public formBuilder: FormBuilder,
    public modalController: ModalController,
    private fb: FirebaseService,
    private weather: WeatherService
  ) {}

  ngOnInit() {
    this.form = this.formBuilder.group({
      title: ["", [Validators.required, Validators.maxLength(50)]],
      description: ["", [Validators.required, Validators.maxLength(200)]]
    });
  }

  dismiss() {
    this.modalController.dismiss();
  }

  async create() {
    this.weather.getWeather().subscribe(
      async data => {
        await this.fb.createNewLog(
          this.form.get("title").value,
          this.form.get("description").value,
          data
        );
        this.dismiss();
      },
      async err => {
        await this.fb.createNewLog(
          this.form.get("title").value,
          this.form.get("description").value
        );
        this.dismiss();
      }
    );
  }
}
