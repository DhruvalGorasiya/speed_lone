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
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.89,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstants.homeBG), fit: BoxFit.contain),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.36,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(ImageConstants.applyNow),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(onPressed: () {}, image: ImageConstants.instantLoan),
              CustomButton(
                  onPressed: () {
                    Get.toNamed(Routes.calculatorView);
                  },
                  image: ImageConstants.calculator),
              CustomButton(onPressed: () {}, image: ImageConstants.loanStatus),
            ],
          ),
        ),
      ],
    );
  }
}
