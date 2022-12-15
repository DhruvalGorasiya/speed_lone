import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';

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
            card(ImageConstant.star, "Rate App"),
            card(ImageConstant.gift, "Free MemberShip"),
            card(ImageConstant.privacy, "Privacy Policy"),
            card(ImageConstant.about, "About Us"),
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
