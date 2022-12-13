import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/contact_detail_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
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
          appBar: AppBar(
            // leading: Te,
            title: Text(StringConstant.contactDetails,
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
                        "Contact:",
                        "+91 7069787178",
                        contactDetailController.contactController,
                        TextInputType.number),
                    nameField(
                        "Email:",
                        "Deo@gmail.com",
                        contactDetailController.emailController,
                        TextInputType.emailAddress),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    elevatedButton(() {
                      // Get.toNamed(Routes.personalDetailView);
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
