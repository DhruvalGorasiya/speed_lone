import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/emi_calculator_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

class EmiCalculatorView extends StatelessWidget {
  EmiCalculatorView({Key? key}) : super(key: key);
  final EmiCalculatorController emiCalculatorController =
      Get.put(EmiCalculatorController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmiCalculatorController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            // leading: Te,
            title:Text(StringConstant.emiCalculator,style: TextStyleConstant.bold18.copyWith(color: ColorConstant.white)),
            elevation: 0,
            backgroundColor: ColorConstant.primaryColor,
          ),
          body: SafeArea(child: Column(children: [

          ],)),
        );
      },
    );
  }
}
