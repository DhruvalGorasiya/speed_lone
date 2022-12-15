import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PanDetailController extends GetxController{
TextEditingController panController = TextEditingController();
String? panError;

void validator (){
  Pattern pattern = "[A-Z]{5}[0-9]{4}[A-Z]{1}";
  RegExp regex = RegExp(pattern.toString());

  panError = (!regex.hasMatch(panController.text))
      ? "Please Enter Valid PanCard Number"
      : null;
  update();
}
}