import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

Widget customSlider(
    {required String heading,
      required double value,
      required double min,
      required double max,
      required String showValue,
      Function(double)? onChange}) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.height * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(heading, style: TextStyleConstant.bold20),
            Text(
              showValue,
              style: TextStyleConstant.bold20
                  .copyWith(color: ColorConstant.black),
            ),
          ],
        ),
      ),
      Slider(
        value: value,
        min: min,
        max: max,
        onChanged: onChange,
        thumbColor: ColorConstant.primaryColor,
        activeColor: const Color(0xffbecce8),
        inactiveColor: const Color(0xffbecce8),
      ),
    ],
  );
}