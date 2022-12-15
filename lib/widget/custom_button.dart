import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_text_field.dart';

Widget customButton(
    {VoidCallback? onPressed,
    required String image,
    required BuildContext context}) {
  return GestureDetector(
    onTap: onPressed,
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Image.asset(image),
    ),
  );
}

Widget elevatedButton(VoidCallback onTap,{String? text}) {
  return ElevatedButton(
    onPressed: onTap,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(ColorConstant.primaryColor),
    ),
    child: Text(text ?? "Next"),
  );
}

Widget textField(
    {required String title,
    required String hintText,
      TextInputType? type,
      int? maxLength,
      ValueChanged<String>? onChanged,
      List<TextInputFormatter>? inputFormatters,
    required TextEditingController controller,
      String? errorText}) {
  return Padding(
    padding: EdgeInsets.only(top: Get.height * 0.02),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleConstant.boldBlack18,
        ),
        customTextField(
          controller: controller,
          errorText: errorText,
          maxLength: maxLength,
          keyboardType: type ?? TextInputType.number,
          hintText: hintText,
          onChanged: onChanged,
inputFormatters: inputFormatters
          // maxLength: length,
        ),
      ],
    ),
  );
}