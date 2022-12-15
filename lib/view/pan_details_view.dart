import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/pan_detail_controller.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_button.dart';

class PanDetailView extends StatelessWidget {
   PanDetailView({Key? key}) : super(key: key);
final PanDetailController panDetailController = Get.put(PanDetailController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PanDetailController>(
      builder: (controller) {
        return Scaffold(
          appBar: customAppBar(title: StringConstant.panCardDetail),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
              child: Column(
                children: [
                  textField(
                    title: "PanCard Number:",
                    hintText: "ABCDE1234F",
                    controller: controller.panController,
                    type: TextInputType.text,
                    errorText: controller.panError,
                    maxLength: 10,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  elevatedButton(() {
                    controller.validator();
                    if (controller.panError == null) {
                      Get.toNamed(Routes.finalOfferView);
                    }
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
