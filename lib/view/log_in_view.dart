import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/routes.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.toNamed(Routes.homeView);
        },
        child: const Center(child: Text('Tap to GO HomeScreen')),
      ),
    );
  }
}
