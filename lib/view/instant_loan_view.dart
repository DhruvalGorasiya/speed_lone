import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/model/loan_instant_model.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';

class InstantLoanView extends StatelessWidget {
  const InstantLoanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: StringConstant.loanInstant),
      body: SafeArea(
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 8),
            itemCount: loanInstantModel.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.loanDetailView);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: ColorConstant.primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    leading: Image.asset(ImageConstant.loanInstant),
                    title: Text(
                      loanInstantModel[index].title ?? "",
                      style: TextStyleConstant.bold16Black,
                    ),
                    subtitle: Text(
                      loanInstantModel[index].subTitle ?? "",
                      style: TextStyleConstant.bold14Black,
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
