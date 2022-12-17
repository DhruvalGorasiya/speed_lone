import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_text_field.dart';

Widget customButton(
    {VoidCallback? onPressed,
    required String image,
    title,
    required BuildContext context}) {
  return GestureDetector(
    onTap: onPressed,
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.26,
      child: Column(
        children: [
          Image.asset(image),
          Text(
            title,
            style: TextStyleConstant.bold15Black,
          ),
        ],
      ),
    ),
  );
}

Widget elevatedButton(VoidCallback onTap, {String? text}) {
  return ElevatedButton(
    onPressed: onTap,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(ColorConstant.primaryColor),
    ),
    child: Text(text ?? "Next"),
  );
}

Widget fixedWidthButton({required String text,required VoidCallback onTap,TextStyle? textStyle}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
      color: ColorConstant.primaryColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(child: Text(text,style: textStyle)),
    ),
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
