import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/widget/custom_birthdate_validator.dart';

class AgeDetailController extends GetxController{
  TextEditingController birthDateController = TextEditingController();
  String? birthDateError;

  void validator(){
    birthDateError = birthDateValidator(birthDateController.text);
    update();
  }

}