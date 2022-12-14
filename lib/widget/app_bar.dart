import 'package:flutter/material.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

PreferredSizeWidget customAppBar({required String title}){
  return AppBar(
    title: Text(title,
        style: TextStyleConstant.bold20
            .copyWith(color: ColorConstant.white)),
    elevation: 0,
    backgroundColor: ColorConstant.primaryColor,
  );
}