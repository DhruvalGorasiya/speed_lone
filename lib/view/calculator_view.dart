import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lone_counter/utils/image_constant.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            ImageConstant.calculatorBG,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.27,
                left: Get.width * 0.02,
                right: Get.width * 0.02,
            bottom: Get.height * 0.17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(ImageConstant.compareLoan,
                        height: Get.height * 0.22, width: Get.width * 0.3,fit: BoxFit.fill),
                    Image.asset(ImageConstant.emiCalculator,
                        height: Get.height * 0.22, width: Get.width * 0.3,fit: BoxFit.fill),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(ImageConstant.fdCalculator,
                        height: Get.height * 0.22, width: Get.width * 0.3,fit: BoxFit.fill),
                    Image.asset(ImageConstant.sipCalculator,
                        height: Get.height * 0.22, width: Get.width * 0.3,fit: BoxFit.fill),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
