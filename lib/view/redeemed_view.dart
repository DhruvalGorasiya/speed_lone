import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lone_counter/model/redeemed_model.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

class RedeemedView extends StatelessWidget {
  const RedeemedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset('assets/backgrounds/recomadition.jpg',
              height: Get.height,width: Get.width, fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 3.6),
            child: ListView.builder(
              itemCount: redeemedList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return _child(
                  maxLoneAmount: redeemedList[index].maxLoneAmount!,
                  minLoneAmount: redeemedList[index].minLoneAmount!,
                  name: redeemedList[index].name!,
                  loneInterest: redeemedList[index].interestRate!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _child(
      {required int maxLoneAmount,
      required int minLoneAmount,
      required String loneInterest,
      required String name}) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.04,
        vertical: Get.width * 0.02,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: ColorConstant.black.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(-3, 6))
          ],
          color: ColorConstant.white),
      // height: 100,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ImageConstant.loneIcon),
                )),
                height: Get.height * 0.05,
                width: Get.width * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.04),
                child: Text(
                  name,
                  style: TextStyleConstant.bold18
                      .copyWith(color: ColorConstant.black),
                ),
              ),
              const Spacer(),
              Image.asset(
                ImageConstant.apply,
                height: Get.height * 0.05,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                loneInterest,
                style: TextStyleConstant.bold18
                    .copyWith(color: ColorConstant.black),
              ),
              Text(
                '₹ ${NumberFormat.currency(locale: 'HI').format(minLoneAmount).replaceAll("INR", '')} - ${NumberFormat.currency(locale: "HI").format(maxLoneAmount).replaceAll("INR", '')}',
                style: TextStyleConstant.bold18
                    .copyWith(color: ColorConstant.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily interest rate',
                style: TextStyleConstant.bold14.copyWith(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Lone Amount',
                style: TextStyleConstant.bold14.copyWith(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
