import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDetailController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
String? fNameError ;
String? lNameError ;

  void validator (){
    lNameError = firstNameController.text.isEmpty ? "Please Enter Amount":null;
    fNameError = lastNameController.text.isEmpty ? "Please Enter Amount":null;
    update();
  }
}
