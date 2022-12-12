import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/home.dart';
import 'package:lone_counter/splash_screen.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/view/log_in_view.dart';

void main() {
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
        GetPage(name: Routes.homeView, page: () => const HomeScreen()),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashView,
    );
  }
}
