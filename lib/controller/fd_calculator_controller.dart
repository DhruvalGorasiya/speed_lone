import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FdCalculatorController extends GetxController {
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController termController = TextEditingController();
  String select = "";
  String character = "";
  String currentValue = "";
  String nv = "";
  String result = "";
  final List<String> interest = ["Simple\nInterest", "Compound\nInterest"];
  final List<String> currencies = ['Rupees', 'Dollars', 'Pounds'];

  onClickRadioButton(value) {
    select = value;
    update();
  }

  setSelectedValue(String newValue) {
    currentValue = newValue;
    update();
  }

  String getEffectiveAmount(String newValue) {
    String newResult;
    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    double term = double.parse(termController.text);

    double netPayableAmount = 0;
    if (character == "simple") {
      netPayableAmount = principal + (principal * rate * term) / 100;
    } else if (character == "compound") {
      netPayableAmount = principal * pow((1 + (rate / 100)), term);
    }

    if (term == 1) {
      newResult =
          "After $term year, you will have to pay total amount = $netPayableAmount $currentValue";
    } else {
      newResult =
          "After $term year, you will have to pay total amount = $netPayableAmount $currentValue";
    }
    return newResult;
  }

  void onDialogOpen(BuildContext context, String s) {
    var alertDialog = AlertDialog(
      title: const Text("NP is selected...."),
      content: Text(s),
      backgroundColor: Colors.green,
      elevation: 8.0,
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(s),
          );
        });
  }

  void reset() {
    principalController.text = "";
    rateController.text = "";
    termController.text = "";
    result = "";
    currentValue = currencies[0];
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    currentValue = currencies[0];
  }
}
