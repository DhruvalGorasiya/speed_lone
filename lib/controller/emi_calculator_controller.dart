import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmiCalculatorController extends GetxController {
  TextEditingController loanAmountController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();
  TextEditingController durationController = TextEditingController();

  RxDouble loanAmount = 1.0.obs;
  RxDouble interestRate = 1.0.obs;
  RxDouble duration = 1.0.obs;
  RxDouble emi = 1.0.obs;

  void changeAmtSlider(double value) {
    loanAmount.value = value;
     double rate = interestRate.value / 12 / 100;
     emi.value =  loanAmount.value *
         rate *
         (pow(1 + rate, duration.value) /
             (pow(1 + rate, duration.value) - 1)).toDouble();
    emi.refresh();
    loanAmount.refresh();
    update();
  }

  void changeIntrestRate(double value) {
    interestRate.value = value;
         double rate = interestRate.value / 12 / 100;

    emi.value =  loanAmount.value *
        rate *
        (pow(1 + rate, duration.value) /
            (pow(1 + rate, duration.value) - 1)).toDouble();
    emi.refresh();
    interestRate.refresh();
    update();
  }

  void changeDuration(double value) {
    duration.value = value;
         double rate = interestRate.value / 12 / 100;

    emi.value =  loanAmount.value *
        rate *
        (pow(1 + rate, duration.value) /
            (pow(1 + rate, duration.value) - 1)).toDouble();
    emi.refresh();
    duration.refresh();
    update();
  }
}
