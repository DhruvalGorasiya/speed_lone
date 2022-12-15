import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/bank_detail_controller.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_button.dart';

class BankDetailView extends StatelessWidget {
  BankDetailView({Key? key}) : super(key: key);
  final BankDetailController controller = Get.put(BankDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BankDetailController>(
      builder: (controller) {
        return Scaffold(
          appBar: customAppBar(title: StringConstant.bankDetail),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textField(
                        title: "Bank Name:",
                        hintText: "Bank Name",
                        controller: controller.bankNameController,
                        type: TextInputType.text,
                        errorText: controller.bankNameError),
                    textField(
                        title: "Bank Account Number:",
                        hintText: "Bank Account Number",
                        controller: controller.accNumberController,
                        type: TextInputType.text,
                        errorText: controller.accNumError),
                    textField(
                        title: "Confirm Account Number:",
                        hintText: "Confirm Account Number",
                        controller: controller.conAccNumberController,
                        type: TextInputType.text,
                        errorText: controller.conAccNumError),
                    textField(
                      title: "IFSC Code:",
                      hintText: "IFSC Code",
                      controller: controller.ifscCodeController,
                      type: TextInputType.text,
                      errorText: controller.ifscCodeError,
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    elevatedButton(() {
                      controller.validator();
                      if (controller.bankNameError == null &&
                          controller.accNumError == null &&
                          controller.conAccNumError == null &&
                          controller.ifscCodeError == null) {
                        Get.toNamed(Routes.panDetailView);
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
