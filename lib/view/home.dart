import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/routes.dart';
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
          Image.asset(ImageConstant.homeBG),
         /* Container(
            height: Get.height * 0.89,
            width: Get.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstants.homeBG), fit: BoxFit.fill),
            ),
          ),*/
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: Get.width * 0.5,),
              child: Image.asset(ImageConstant.applyNow,width: Get.width * 0.35),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(onPressed: () {}, image: ImageConstant.instantLoan,context: context),
                customButton(
                    onPressed: () {
                      Get.toNamed(Routes.calculatorView,);
                    },
                    image: ImageConstant.calculator,context: context),
                customButton(onPressed: () {}, image: ImageConstant.loanStatus,context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
