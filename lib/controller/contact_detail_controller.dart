import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactDetailController extends GetxController {
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? emailError;
  String? numberError;

  void validator() {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    emailError = (!regex.hasMatch(emailController.text))
        ? "Please Enter Valid Email"
        : null;
    numberError = contactController.text.length != 10
        ? "Please Enter Valid Phone Number"
        : null;
    update();
  }
}
