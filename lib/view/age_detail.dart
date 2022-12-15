import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/age_detail_controller.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_button.dart';

class AgeDetail extends StatelessWidget {
  AgeDetail({Key? key}) : super(key: key);
  final AgeDetailController controller = Get.put(AgeDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AgeDetailController>(builder: (controller) {
      return Scaffold(
        appBar: customAppBar(title: StringConstant.ageDetail),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
            child: Column(
              children: [
                textField(
                  title: "BirthDate:",
                  hintText: "DD/MM/YYYY",
                  controller: controller.birthDateController,
                  type: TextInputType.text,
                  errorText: controller.birthDateError,
                  maxLength: 10,
                ),
                const Text("Please Enter A Value In DD/MM/YYYY Format"),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                elevatedButton(() {
                  controller.validator();
                  if (controller.birthDateError == null) {
                    Get.toNamed(Routes.bankDetailView);
                  }
                }),
              ],
            ),
          ),
        ),
      );
    });
  }
}
