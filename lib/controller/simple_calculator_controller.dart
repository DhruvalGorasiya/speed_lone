import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleCalculatorController extends GetxController {
  final TextEditingController returnRateController = TextEditingController();
  final TextEditingController timePeriodController = TextEditingController();
  final TextEditingController controller = TextEditingController();
  RxDouble monthlyInvestment = 25000.0.obs;
  RxDouble expectedReturnRate = 12.0.obs;
  RxDouble timePeriod = 10.0.obs;
  RxDouble investedAmount = 0.0.obs;
  RxDouble totalInvestment = 0.0.obs;
  RxDouble result = 0.0.obs;
  RxDouble i = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    controller.text = monthlyInvestment.value.toString();
    returnRateController.text = expectedReturnRate.toString();
    timePeriodController.text = timePeriod.toString();
    investedAmount.value = (monthlyInvestment.value * 12) * timePeriod.value;
    i.value = (expectedReturnRate) / (12 * 100);
    result.value = (monthlyInvestment.value *
            (((pow((1 + i.value), (timePeriod.value * 12))) - 1) / i.value) *
            (1 + i.value)) -
        investedAmount.value;
    totalInvestment.value = investedAmount.value + result.value;
    update();
  }

  void timePeriodCalculation(double value) {
    timePeriod.value = value;
    timePeriodController.text = timePeriod.value.toStringAsFixed(0);
    investedAmount.value = (monthlyInvestment.value * 12) * timePeriod.value;
    i.value = (expectedReturnRate) / (12 * 100);
    result.value = (monthlyInvestment.value *
            (((pow((1 + i.value), (timePeriod.value * 12))) - 1) / i.value) *
            (1 + i.value)) -
        investedAmount.value;
    totalInvestment.value = investedAmount.value + result.value;
    update();
  }

  void expectedReturnRateCalculation(double value) {
    expectedReturnRate.value = value;
    returnRateController.text = expectedReturnRate.value.toStringAsFixed(0);
    i.value = (expectedReturnRate.value) / (12 * 100);
    result.value = (monthlyInvestment.value *
            (((pow((1 + i.value), (timePeriod.value * 12))) - 1) / i.value) *
            (1 + i.value)) -
        investedAmount.value;
    totalInvestment.value = investedAmount.value + result.value;
    update();
  }
  void monthlyInvestmentCalculation(double value) {
    monthlyInvestment.value = value;
    controller.text =
        monthlyInvestment.value.toStringAsFixed(0);
    investedAmount.value =
        (monthlyInvestment.value * 12) * timePeriod.value;
    i.value = (expectedReturnRate.value) / (12 * 100);
    result.value = (monthlyInvestment.value *
        (((pow((1 + i.value), (timePeriod.value * 12))) -
            1) /
            i.value) *
        (1 + i.value)) -
        investedAmount.value;
    totalInvestment.value = investedAmount.value + result.value;
    update();
  }
}
