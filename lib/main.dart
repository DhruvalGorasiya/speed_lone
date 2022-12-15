import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lone_counter/view/bottom_navigation_view.dart';
import 'package:lone_counter/view/calculator_view.dart';

import 'package:lone_counter/view/contact_detail_view.dart';

import 'package:lone_counter/view/compare_lone_view.dart';

import 'package:lone_counter/view/emi_calculator_view.dart';
import 'package:lone_counter/view/personal_detail_view.dart';
import 'package:lone_counter/view/splash_view.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/view/log_in_view.dart';

import 'view/loan_detail_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  MobileAds.instance
    ..initialize()
    ..updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: ['B5CD2C70D9D7D5393FA2D179D6434CFC']),
    );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: Routes.splashView, page: () => const SplashScreen()),
        GetPage(name: Routes.loginView, page: () => const LogInView()),
        GetPage(name: Routes.homeView, page: () => BottomNavigationScreen()),
        GetPage(
            name: Routes.calculatorView, page: () => const CalculatorView()),
        GetPage(
            name: Routes.emiCalculatorView, page: () => EmiCalculatorView()),
        GetPage(name: Routes.loanDetailView, page: () => LoanDetailView()),
        GetPage(
            name: Routes.personalDetailView, page: () => PersonalDetailView()),
        GetPage(
            name: Routes.contactDetailView, page: () => ContactDetailView()),
        GetPage(
            name: Routes.calculatorView, page: () => const CalculatorView()),
        GetPage(
            name: Routes.emiCalculatorView, page: () => EmiCalculatorView()),
        GetPage(
            name: Routes.compareLoneCalculator,
            page: () => CompareLoneCalculator()),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashView,
    );
  }
}
