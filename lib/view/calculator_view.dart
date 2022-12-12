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
            ImageConstants.calculatorBG,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
        ]),
      ) /*Container(
        height: MediaQuery.of(context).size.height * 0.89,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageConstants.calculatorBG),
              fit: BoxFit.contain),
        ),
      )*/
      ,
    );
  }
}
