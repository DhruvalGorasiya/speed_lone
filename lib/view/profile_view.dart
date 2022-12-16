import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Future<void> uploadingData(String title) async {
    await FirebaseFirestore.instance.collection("testing").add({
      'productName': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: customAppBar(title: StringConstant.setting),
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
                onTap: () async {
                  await StoreRedirect.redirect(
                      androidAppId: 'com.example.lone_counter');
                },
                child: card(ImageConstant.star, "Rate App")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.freeMemberShipView);
                },
                child: card(ImageConstant.gift, "Free MemberShip")),
            GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse(
                      'https://rapidcashloans.blogspot.com/2022/12/privacy-policy.html'));
                },
                child: card(ImageConstant.privacy, "Privacy Policy")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.aboutUs);
                },
                child: card(ImageConstant.about, "About Us")),
          ],
        ),
      ),
    );
  }

  Widget card(String icon, title) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      elevation: 5,
      child: ListTile(
        leading: SizedBox(
          height: 30,
          width: 26,
          child: Image.asset(icon),
        ),
        title: Text(
          title,
          style: TextStyleConstant.bold16Black,
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
