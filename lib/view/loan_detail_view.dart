import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/loan_detail_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_button.dart';
import 'package:lone_counter/widget/custom_text_field.dart';

import '../utils/string_constant.dart';

class LoanDetailView extends StatelessWidget {
  LoanDetailView({Key? key}) : super(key: key);
  final LoanDetailController loanDetailController =
      Get.put(LoanDetailController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoanDetailController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            // leading: Te,
            title: Text(StringConstant.loanDetail,
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
                    textField("Amount:", "5,00,000",
                        loanDetailController.amountController, 6),
                    textField("Tenure in Month:", "50",
                        loanDetailController.tenureController, 2),
                    elevatedButton(() {
                      Get.toNamed(Routes.personalDetailView);
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
