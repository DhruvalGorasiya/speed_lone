import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

class LoanStatusView extends StatelessWidget {
  const LoanStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstant.congratulations),
                  fit: BoxFit.fill)),
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.only(top: Get.height * 0.04),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Your Lone Will Be Approve\nin 24 Hour",
                    style: TextStyleConstant.bold16
                        .copyWith(color: ColorConstant.white),textAlign: TextAlign.center),
                const Spacer(),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 45,
                  width: 125,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.checkStatus),
                          fit: BoxFit.fill)),
                  margin: EdgeInsets.only(
                    bottom: Get.height * 0.1,
                    // top: Get.height * ,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
