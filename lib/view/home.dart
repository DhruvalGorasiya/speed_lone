import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lone_counter/controller/bottom_navigation_controller.dart';

import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/widget/custom_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final BottomNavigationController bottomNavigationController =
      BottomNavigationController();

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
                top: Get.width * 0.5,
              ),
              child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.loanDetailView);
                  },
                  child: Image.asset(ImageConstant.applyNow,
                      width: Get.width * 0.35)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(
                    onPressed: () {},
                    image: ImageConstant.instantLoan,
                    context: context),
                customButton(
                    onPressed: () {
                      Get.toNamed(
                        Routes.calculatorView,
                      );
                    },
                    image: ImageConstant.calculator,
                    context: context),
                customButton(
                    onPressed: () {},
                    image: ImageConstant.loanStatus,
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
