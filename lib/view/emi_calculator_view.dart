import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/emi_calculator_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_text_field.dart';

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
            title: Text(StringConstant.emiCalculator,
                style: TextStyleConstant.bold18
                    .copyWith(color: ColorConstant.white)),
            elevation: 0,
            backgroundColor: ColorConstant.primaryColor,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textField("Loan Amount", "Loan Amount",
                        emiCalculatorController.loanAmountController, 10),
                    textField("Interest Rate", "Rate of Interest %",
                        emiCalculatorController.interestRateController, 4),
                    textField("Duration", "Loan Duration",
                        emiCalculatorController.durationController, 2),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget textField(
      String title, hintText, TextEditingController controller, int length) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleConstant.boldBlack18,
        ),
        Container(
          height: Get.height * 0.085,
          margin: EdgeInsets.only(
              top: Get.height * 0.01, bottom: Get.height * 0.02),
          child: TextFormFieldWidgets(
            controller: controller,
            keyboardType: TextInputType.number,
            hintText: hintText,
            maxLength: length,
          ),
        ),
      ],
    );
  }
}
