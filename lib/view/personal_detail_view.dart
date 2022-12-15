import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/personal_detail_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_button.dart';

class PersonalDetailView extends StatelessWidget {
  PersonalDetailView({Key? key}) : super(key: key);
  final PersonalDetailController personalDetailController =
      Get.put(PersonalDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalDetailController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            // leading: Te,
            title: Text(StringConstant.personalDetail,
                style: TextStyleConstant.bold18
                    .copyWith(color: ColorConstant.white)),
            elevation: 0,
            backgroundColor: ColorConstant.primaryColor,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textField(
                        title: "First Name:",
                        hintText: "John",
                        controller:
                            personalDetailController.firstNameController,
                        type: TextInputType.text,
                        errorText: controller.fNameError,
                        maxLength: 10),
                    textField(
                        title: "Last Name:",
                        maxLength: 10,
                        hintText: "Deo",
                        controller: personalDetailController.lastNameController,
                        type: TextInputType.text,
                        errorText: controller.lNameError),
                    const Text("Enter name as mention on id proof"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    elevatedButton(
                      () {
                        controller.validator();
                        if (controller.lNameError == null &&
                            controller.fNameError == null) {
                          Get.toNamed(Routes.contactDetailView);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
