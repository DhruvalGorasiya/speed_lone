import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/view/home.dart';
import 'package:lone_counter/view/profile_view.dart';
import 'package:lone_counter/view/redeemed_view.dart';

class BottomNavigationController extends GetxController{
  RxInt index = 0.obs;


  void changeIndex (int index){
    this.index = index.obs;
    print(index);
  }


  List<Widget> screens = [
    const RedeemedView(),
    const HomeView(),
    const ProfileView(),
  ];
}