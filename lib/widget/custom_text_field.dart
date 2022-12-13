import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

Widget customTextField({
  String? hintText,
  String? suffixIcon,
  TextEditingController? controller,
  String? Function(String?)? validator,
  Callback? onTap,
  Callback? onTapTextField,
  bool? obscureText,
  bool? readOnly,
  TextInputType? keyboardType,
  bool? enabled,
  FocusNode? focusNode,
  TextInputAction? textInputAction,
  int? maxLength,
  bool? isOnlyDigit,
  AutovalidateMode? autoValidateMode,
  String? errorText,
  String? label,
}) {
  return TextFormField(
    maxLines: maxLength,
    autovalidateMode: autoValidateMode,
    onTap: onTapTextField,
    textInputAction: textInputAction,
    inputFormatters: [
      if (isOnlyDigit ?? false) FilteringTextInputFormatter.digitsOnly,
    ],
    enabled: enabled,
    maxLength: maxLength ?? 10,
    maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
    readOnly: readOnly ?? false,
    focusNode: focusNode,
    keyboardType: keyboardType,
    obscureText: obscureText ?? false,
    validator: validator,
    cursorColor: ColorConstant.primaryColor,
    controller: controller,
    style: TextStyleConstant.bold14.copyWith(color: ColorConstant.black),
    textAlignVertical: TextAlignVertical.center,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              const BorderSide(color: ColorConstant.primaryColor, width: 2)),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      labelText: label,
      floatingLabelStyle:
          TextStyleConstant.bold14.copyWith(color: ColorConstant.black),
      labelStyle: TextStyleConstant.bold14.copyWith(color: ColorConstant.black),
      contentPadding: EdgeInsets.only(
        left: Get.width * 0.04,
        top: Get.height * 0.04,
      ),
      errorText: errorText,
      hintText: hintText,
      hintStyle: TextStyleConstant.boldGrey18,
    ),
  );
}
