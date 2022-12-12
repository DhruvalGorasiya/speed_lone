import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/bottom_navigation_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';

class BottomNavigationScreen extends StatelessWidget {
   BottomNavigationScreen({super.key});

 final BottomNavigationController controller = Get.put(BottomNavigationController());


  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(builder: (controller) {
      return Scaffold(
          bottomNavigationBar:BottomNavigationBar(
            currentIndex: controller.index.value,
            onTap: controller.changeIndex,
            selectedLabelStyle: TextStyleConstant.bold14,
            selectedItemColor: ColorConstant.primaryColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding:const EdgeInsets.only(bottom: 5),
                    child: Image.asset(controller.index.value == 0 ? ImageConstant.gifRed:ImageConstant.gifBlack,
                    height: 25),
                  ),
                  label: "Redeemed"),
              BottomNavigationBarItem(
                  icon: Image.asset(controller.index.value == 1?ImageConstant.homeRed:ImageConstant.homeBlack,
                  height: 25),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(controller.index.value == 2 ?ImageConstant.profileRed : ImageConstant.profileBack,
                  height: 25),
                  label: "Profile"),
            ],
          ),
          body: IndexedStack(
            index: controller.index.value,
            children: controller.screens,
          ));
    },);
  }
}
