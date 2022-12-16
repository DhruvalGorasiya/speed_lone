import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';

class LoanStatusView extends StatelessWidget {
  const LoanStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstant.congratulaion),
                  fit: BoxFit.fill)),
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.only(top: Get.height * 0.8),
            child: Container(
              padding: EdgeInsets.only(
                  top: Get.height * 0.001,
                  bottom: Get.height * 0.09,
                  left: Get.width * 0.3,
                  right: Get.width * 0.3),
              child: Image.asset(
                ImageConstant.checkStatus,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
