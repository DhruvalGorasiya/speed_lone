import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/servics/ad_mob_services.dart';
import 'package:lone_counter/view/home.dart';
import 'package:lone_counter/view/profile_view.dart';
import 'package:lone_counter/view/redeemed_view.dart';

class BottomNavigationController extends GetxController {
  RxInt index = 0.obs;

  void changeIndex(int index) {
    // AdMobService.showRewardedInterstitialAd();
    AdMobService.showInterstitialAd(); // poster ads
    this.index = index.obs;
    update();
  }

  List<Widget> screens = [
    RedeemedView(),
    const HomeView(),
    const ProfileView(),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    AdMobService.createInterstitialAd();
    AdMobService.createRewardedAd();
    AdMobService.createRewardedInterstitialAd();
    // TODO: Load a banner ad
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    AdMobService.interstitialAd?.dispose();
    AdMobService.rewardedAd?.dispose();
    AdMobService.rewardedInterstitialAd?.dispose();
  }
}
