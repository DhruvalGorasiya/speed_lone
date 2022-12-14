import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompareLoneCalculatorController extends GetxController {
  TextEditingController loanAmountController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();
  TextEditingController durationController = TextEditingController();

  RxDouble loanAmount = 1.0.obs;
  RxDouble interestRate = 1.0.obs;
  RxDouble duration = 1.0.obs;
  RxDouble endVal = 1.0.obs;

  void changeAmtSlider(double value) {
    loanAmount.value = value;
    double rate = (interestRate.value / 100) + 1;
    endVal.value = loanAmount.value * pow(rate, duration.value);
    endVal.refresh();
    loanAmount.refresh();
    update();
  }

  void changeIntrestRate(double value) {
    interestRate.value = value;
    double rate = (interestRate.value / 100) + 1;
    endVal.value = loanAmount.value * pow(rate, duration.value);
    endVal.refresh();
    interestRate.refresh();
    update();
  }

  void changeDuration(double value) {
    duration.value = value;
    double rate = (interestRate.value / 100) + 1;
    endVal.value = loanAmount.value * pow(rate, duration.value);
    endVal.refresh();
    duration.refresh();
    update();
  }
}
