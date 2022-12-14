import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/emi_calculator_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_slider.dart';
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
            backgroundColor: ColorConstant.primaryColor,
            appBar: customAppBar(title: StringConstant.emiCalculator),
            body: SafeArea(
                child: Obx(() => Stack(children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: Get.height * 0.75,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: ColorConstant.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              customSlider(
                                heading: "Loan Amount",
                                value: controller.loanAmount.value,
                                min: 1,
                                max: 500000,
                                showValue:
                                    controller.loanAmount.value.toStringAsFixed(0),
                                onChange: controller.changeAmtSlider,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              customSlider(
                                heading: "Interest Rate",
                                value: controller.interestRate.value,
                                min: 1,
                                max: 10,
                                showValue:
                                    "${controller.interestRate.value.toStringAsFixed(0)} %",
                                onChange: controller.changeIntrestRate,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              customSlider(
                                heading: "Loan Tenure",
                                value: controller.duration.value,
                                min: 1,
                                max: 12,
                                showValue:
                                    "${controller.duration.value.toStringAsFixed(0)} /month",
                                onChange: controller.changeDuration,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.06),
                            child: Column(
                              children: [
                                Text('Your Lone EMI is',
                                    style: TextStyleConstant.bold16.copyWith(
                                      fontSize: 12,
                                      color: ColorConstant.white,
                                    )),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                        controller.emi.value.toStringAsFixed(2),
                                        style:
                                            TextStyleConstant.bold20.copyWith(
                                          color: ColorConstant.white,
                                        )),
                                    Text(" /month",
                                        style:
                                            TextStyleConstant.bold16.copyWith(
                                          fontSize: 12,
                                          color: ColorConstant.white,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ))
                    ]))));
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
          child: customTextField(
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
