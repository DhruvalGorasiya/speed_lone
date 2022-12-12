import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/redeemed_controller.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});

 final BottomNavigationController controller = Get.put(BottomNavigationController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: controller.index.value,
          onTap: controller.changeIndex,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/gift-box.png'),
                label: "Redeemed"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/home_blk.png'),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/settings_blk.png'),
                label: "Profile"),
          ],
        ),
        body: Obx(() => IndexedStack(
              index: controller.index.value,
              children:controller.screens,
            )));
  }
}
