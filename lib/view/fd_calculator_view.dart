import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/fd_calculator_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_button.dart';
import 'package:lone_counter/widget/custom_text_field.dart';

class FdCalculatorView extends StatelessWidget {
  FdCalculatorView({Key? key}) : super(key: key);
  final FdCalculatorController fdCalculatorController =
      Get.put(FdCalculatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: StringConstant.interestCalculator),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  addRadioButton(
                    0,
                    "Simple\nInterest",
                  ),
                  addRadioButton(1, "Compound\nInterest"),
                ],
              ),
              customTextField(
                hintText: "Principle",
                controller: fdCalculatorController.principalController,
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: customTextField(
                    keyboardType: TextInputType.number,
                    hintText: "Rate of Interest",
                    controller: fdCalculatorController.rateController),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: Get.width * 0.5,
                      child: customTextField(
                          keyboardType: TextInputType.number,
                          hintText: "Term",
                          controller: fdCalculatorController.termController),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                  Expanded(
                    child: GetBuilder<FdCalculatorController>(
                      builder: (_) => DropdownButton<String>(
                        items: fdCalculatorController.currencies
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        value: fdCalculatorController.currentValue,
                        onChanged: (String? val) {
                          fdCalculatorController.setSelectedValue(val ?? "");
                          fdCalculatorController.nv = val ?? "";
                          fdCalculatorController.currentValue = val ?? "";
                        },
                      ),
                    ),
                  ),
                ],
              ),
              elevatedButton("CALCULATE", () {
                fdCalculatorController.result = fdCalculatorController
                    .getEffectiveAmount(fdCalculatorController.nv);
                fdCalculatorController.onDialogOpen(
                    context, fdCalculatorController.result);
              }),
              elevatedButton("RESET", () {
                fdCalculatorController.reset();
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget addRadioButton(int btnIndex, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GetBuilder<FdCalculatorController>(
          builder: (_) => Radio(
              activeColor: ColorConstant.primaryColor,
              value: fdCalculatorController.interest[btnIndex],
              groupValue: fdCalculatorController.select,
              onChanged: (value) {
                fdCalculatorController.onClickRadioButton(value);
              }),
        ),
        Text(title),
      ],
    );
  }

  Widget elevatedButton(String title, VoidCallback onTap) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ColorConstant.primaryColor)),
                onPressed: onTap,
                child: Text(title))),
      ],
    );
  }
}
