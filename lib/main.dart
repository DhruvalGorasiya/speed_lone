import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lone_counter/network_binding.dart';
import 'package:lone_counter/view/about_us.dart';
import 'package:lone_counter/view/age_detail.dart';
import 'package:lone_counter/view/bank_detail_view.dart';
import 'package:lone_counter/view/bottom_navigation_view.dart';
import 'package:lone_counter/view/calculator_view.dart';
import 'package:lone_counter/view/contact_detail_view.dart';
import 'package:lone_counter/view/compare_lone_view.dart';
import 'package:lone_counter/view/emi_calculator_view.dart';
import 'package:lone_counter/view/instant_loan_view.dart';
import 'package:lone_counter/view/final_offer_view.dart';
import 'package:lone_counter/view/membership_view.dart';
import 'package:lone_counter/view/pan_details_view.dart';
import 'package:lone_counter/view/personal_detail_view.dart';
import 'package:lone_counter/view/splash_view.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/view/log_in_view.dart';
import 'view/fd_calculator_view.dart';
import 'view/loan_detail_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  MobileAds.instance.initialize();
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
        GetPage(name: Routes.ageDetailView, page: () => AgeDetail()),
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
        GetPage(name: Routes.bankDetailView, page: () => BankDetailView()),
        GetPage(name: Routes.panDetailView, page: () => PanDetailView()),
        GetPage(
            name: Routes.finalOfferView, page: () => const FinalOfferView()),
        GetPage(
            name: Routes.freeMemberShipView,
            page: () => const MembershipView()),
        GetPage(
            name: Routes.compareLoneCalculator,
            page: () => CompareLoneCalculator()),
        GetPage(
            name: Routes.instantLoanView, page: () => const InstantLoanView()),
        GetPage(name: Routes.aboutUs, page: () => const AboutUs()),
        GetPage(name: Routes.fdCalculatorView, page: () => FdCalculatorView()),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashView,
      initialBinding: NetworkBinding(),
    );
  }
}
