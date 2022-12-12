import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/redeemed_controller.dart';

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
            type: BottomNavigationBarType.fixed,

            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(controller.index.value == 0 ? 'assets/icons/gift-box.png':'assets/icons/gift-box_blk.png',
                  height: 25),
                  label: "Redeemed"),
              BottomNavigationBarItem(
                  icon: Image.asset(controller.index.value == 1?'assets/icons/home.png':'assets/icons/home_blk.png',
                  height: 25),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(controller.index.value == 2 ?'assets/icons/settings.png' : 'assets/icons/settings_blk.png',
                  height: 25),
                  label: "Profile"),
            ],
          ),
          body: IndexedStack(
            index: controller.index.value,
            children:controller.screens,
          ));
    },);
  }
}
