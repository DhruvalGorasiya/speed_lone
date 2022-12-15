import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/contact_detail_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_button.dart';

class ContactDetailView extends StatelessWidget {
  ContactDetailView({Key? key}) : super(key: key);

  final ContactDetailController contactDetailController =
      Get.put(ContactDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactDetailController>(
      builder: (controller) {
        return Scaffold(
          appBar: customAppBar(title: StringConstant.contactDetails),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textField(
                        title: "Contact:",
                        hintText: "+91 7069787178",
                        controller: contactDetailController.contactController,
                        type: TextInputType.number,
                        maxLength: 10,
                        errorText: controller.numberError),
                    textField(
                      title: "Email:",
                      hintText: "Deo@gmail.com",
                      controller: contactDetailController.emailController,
                      type: TextInputType.emailAddress,
                      errorText: controller.emailError
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    elevatedButton(() {
                      contactDetailController.validator();
                      if(controller.emailError == null && controller.numberError == null){
                        Get.toNamed(Routes.ageDetailView);
                      }
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
