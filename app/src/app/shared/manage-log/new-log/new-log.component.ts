import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ModalController } from '@ionic/angular';

import { FirebaseService } from '../../../core';

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
    private fb: FirebaseService
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
    await this.fb.createNewLog(this.form.get('title').value, this.form.get('description').value);
    this.dismiss();
  }
}
