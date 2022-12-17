import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:lone_counter/servics/ad_mob_services.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/custom_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(ImageConstant.homeBG,
              width: Get.width, height: Get.height, fit: BoxFit.fill),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: Get.width * 0.25,
              ),
              child: Column(
                children: [
                  Text(
                    "Maximum Amount",
                    style:
                        TextStyleConstant.bold18.copyWith(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.width * 0.02),
                    child: Text(
                      "Rs. 5,00,000",
                      style: TextStyleConstant.bold20
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.width * 0.02),
                    child: Text(
                      "Approve in just 5 minute",
                      style: TextStyleConstant.bold18
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.loanDetailView);
                      },
                      child: Image.asset(ImageConstant.applyNow,
                          width: Get.width * 0.35)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.55,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(
                    onPressed: () {
                      Get.toNamed(Routes.instantLoanView);
                    },
                    image: ImageConstant.instantLoan,
                    title: "Instant Loan",
                    context: context),
                customButton(
                    onPressed: () {
                      AdMobService.showRewardedInterstitialAd();
                      Get.toNamed(Routes.calculatorView);
                    },
                    image: ImageConstant.calculator,
                    title: "Calculator",
                    context: context),
                customButton(
                    onPressed: () {
                      Get.toNamed(Routes.loanStatusView);
                    },
                    image: ImageConstant.loanStatus,
                    title: "Loan Status",
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
