import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/connectivity_controller.dart';
import 'package:lone_counter/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final InternetConnectivity internetConnectivity = Get.find<InternetConnectivity>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000),() {
      Get.offNamed(Routes.homeView);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(child: Image.asset("assets/splash_screen.gif",fit: BoxFit.fitWidth,)));
  }
}
