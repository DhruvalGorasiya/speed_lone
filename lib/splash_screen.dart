import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000),() {
      Get.toNamed(Routes.loginView);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(child: Image.asset("assets/new splash screen.gif",fit: BoxFit.fitWidth,)));
  }
}
