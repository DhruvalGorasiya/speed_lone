import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanDetailController extends GetxController {
  TextEditingController amountController = TextEditingController();
  TextEditingController tenureController = TextEditingController();
  String? amtError;
  String? tenureError;

  void validator (){
    amtError = amountController.text.isEmpty ? "Please Enter Amount":null;
    tenureError = tenureController.text.isEmpty ? "Please Enter Tenure":null;
    update();
  }

}
