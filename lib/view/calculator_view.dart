import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/routes.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
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
                top: Get.height * 0.30,
                left: Get.width * 0.02,
                right: Get.width * 0.02,
                bottom: Get.height * 0.17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    imageTap(image: ImageConstant.emiCalculator,onTap: () {
                      Get.toNamed(Routes.emiCalculatorView);
                    },),
                    imageTap(image: ImageConstant.compareLoan)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    imageTap(
                      image: ImageConstant.fdCalculator,
                      onTap: () {},
                    ),
                    imageTap(
                      image: ImageConstant.sipCalculator,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget imageTap({VoidCallback? onTap, required String image}) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(image,
          height: Get.height * 0.21, width: Get.width * 0.28, fit: BoxFit.fill),
    );
  }
}
