import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/personal_detail_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_button.dart';
import 'package:lone_counter/widget/custom_text_field.dart';

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
                    nameField(
                      "First Name:",
                      "John",
                      personalDetailController.firstNameController,
                      TextInputType.text,
                      (value) {
                        // value != null &&
                        //     contactDetailController.validateEmail(value)
                        //     ? "Enter Valid Email"
                        //     : null;
                      },
                      (value) {},
                    ),
                    nameField(
                      "Last Name:",
                      "Deo",
                      personalDetailController.lastNameController,
                      TextInputType.text,
                      (value) {
                        // value != null &&
                        //     contactDetailController.validateEmail(value)
                        //     ? "Enter Valid Email"
                        //     : null;
                      },
                      (value) {},
                    ),
                    const Text("Enter name as mention on id proof"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    elevatedButton(() {
                      Get.toNamed(Routes.contactDetailView);
                    }),
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
