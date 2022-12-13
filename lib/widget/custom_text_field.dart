import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

class TextFormFieldWidgets extends StatelessWidget {
  final String hintText;
  final String? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Callback? onTap;
  final Callback? onTapTextField;
  final bool? obscureText;
  final bool? readOnly;
  final TextInputType keyboardType;
  final bool? enabled;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final int maxLength;
  final bool? isOnlyDigit;
  final AutovalidateMode? autoValidateMode;
  final String? errorText;
  final String? label;

  const TextFormFieldWidgets({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.onTap,
    this.obscureText,
    required this.keyboardType,
    this.enabled,
    this.focusNode,
    this.readOnly,
    this.textInputAction,
    this.onTapTextField,
    required this.maxLength,
    this.isOnlyDigit,
    this.autoValidateMode,
    this.errorText,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
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
      cursorColor: context.theme.dividerColor,
      controller: controller,
      style: TextStyleConstant.bold14,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Colors.red,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: label,
        floatingLabelStyle: TextStyleConstant.bold14,
        labelStyle: TextStyleConstant.bold14,
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
}
