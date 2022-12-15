import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankDetailController extends GetxController {
  TextEditingController bankNameController = TextEditingController();
  TextEditingController accNumberController = TextEditingController();
  TextEditingController conAccNumberController = TextEditingController();
  TextEditingController ifscCodeController = TextEditingController();
  String? bankNameError;
  String? accNumError;
  String? conAccNumError;
  String? ifscCodeError;

  void validator() {
    bankNameError =
        bankNameController.text.isEmpty ? "Please Enter Bank Name" : null;
    accNumError =
        accNumberController.text.isEmpty ? "Please Enter Account Number" : null;
    conAccNumError = conAccNumberController.text.isEmpty
        ? "Please Enter Confirm Account Number"
        : accNumberController.text != conAccNumberController.text
            ? "Account Number Was Not Match With Account Number"
            : null;
    ifscCodeError =
        ifscCodeController.text.isEmpty ? "Please Enter Account Number" : null;
    update();
  }
}
