import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/contact_detail_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
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
                child: Form(
                  key: contactDetailController.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      nameField(
                        "Contact:",
                        "+91 7069787178",
                        contactDetailController.contactController,
                        TextInputType.number,
                        (value) {
                          if (value != null && value.length < 10) {
                            return "Invalid Mobile number";
                          } else {
                            return null;
                          }
                        },
                        (value) => contactDetailController.number.value = value,
                      ),
                      nameField(
                        "Email:",
                        "Deo@gmail.com",
                        contactDetailController.emailController,
                        TextInputType.emailAddress,
                        (value) {
                          value != null &&
                                  contactDetailController.validateEmail(value)
                              ? "Enter Valid Email"
                              : null;
                          return null;
                        },
                        (value) => contactDetailController.email.value = value,
                      ),
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
          ),
        );
      },
    );
  }
}
