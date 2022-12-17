import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/servics/ad_mob_services.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/constant_var.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/view/home.dart';
import 'package:lone_counter/view/profile_view.dart';
import 'package:lone_counter/view/redeemed_view.dart';
import 'package:lone_counter/widget/custom_button.dart';

class BottomNavigationController extends GetxController {
  RxInt index = 0.obs;

  void changeIndex(int index) {
    // AdMobService.showInterstitialAd(); // poster ads
    this.index = index.obs;
    if (index == 1 && !showRateDialog) {
      Get.dialog(
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05, vertical: Get.height * 0.3),
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
              decoration: BoxDecoration(
                color: ColorConstant.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Rate Us",
                      style: TextStyleConstant.bold20
                          .copyWith(color: ColorConstant.black, fontSize: 36),
                    ),
                    Container(
                      height: Get.height * 0.1,
                      // width: Get.width * 0.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/rating.png"),
                        ),
                      ),
                    ),
                    Text(
                      "If You Satisfy With Our\nApp Please Rate us!",
                      style: TextStyleConstant.bold18
                          .copyWith(color: ColorConstant.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        fixedWidthButton(
                            text: 'Rate',
                            onTap: () {},
                            textStyle: TextStyleConstant.bold18
                                .copyWith(color: ColorConstant.white)),
                        fixedWidthButton(
                            text: 'Cancel',
                            onTap: () {
                              Get.back();
                            },
                            textStyle: TextStyleConstant.bold18
                                .copyWith(color: ColorConstant.white)),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ).then((value) {
        showRateDialog = true;
      });
    }
    update();
  }

  List<Widget> screens = [
    RedeemedView(),
    const HomeView(),
    const ProfileView(),
  ];

  @override
  void onInit() {
    super.onInit();
    AdMobService.createInterstitialAd();
    AdMobService.createRewardedAd();
    AdMobService.createRewardedInterstitialAd();
  }

  @override
  void dispose() {
    super.dispose();
    AdMobService.interstitialAd?.dispose();
    AdMobService.rewardedAd?.dispose();
    AdMobService.rewardedInterstitialAd?.dispose();
  }
}
