import 'package:flutter/material.dart';
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

Widget elevatedButton(VoidCallback onTap) {
  return ElevatedButton(
    onPressed: onTap,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(ColorConstant.primaryColor),
    ),
    child: const Text("Next"),
  );
}

Widget textField(
    String title, hintText, TextEditingController controller, int length) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyleConstant.boldBlack18,
      ),
      Container(
        height: Get.height * 0.085,
        margin:
            EdgeInsets.only(top: Get.height * 0.01, bottom: Get.height * 0.02),
        child: customTextField(
          controller: controller,
          keyboardType: TextInputType.number,
          hintText: hintText,
          maxLength: length,
        ),
      ),
    ],
  );
}

Widget nameField(
    String title,
    hintText,
    TextEditingController controller,
    TextInputType type,
    String? Function(String?)? validator,
    ValueChanged<String>? onChange) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyleConstant.boldBlack18,
      ),
      Container(
        height: Get.height * 0.085,
        margin:
            EdgeInsets.only(top: Get.height * 0.01, bottom: Get.height * 0.02),
        child: TextFormField(
          onChanged: onChange,
          validator: validator,
          keyboardType: type,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                    color: ColorConstant.primaryColor, width: 2)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            contentPadding: EdgeInsets.only(
              left: Get.width * 0.04,
              top: Get.height * 0.04,
            ),
            hintText: hintText,
            hintStyle: TextStyleConstant.boldGrey18,
          ),
        ),
      ),
    ],
  );
}
