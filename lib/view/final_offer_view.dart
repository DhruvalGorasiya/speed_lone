import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/utils/routes.dart';
import 'package:lone_counter/utils/string_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:lone_counter/widget/custom_button.dart';

class FinalOfferView extends StatelessWidget {
  const FinalOfferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: StringConstant.finalOfferView),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            const SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  "Demand Promissory note",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.start,
              "on demand i residing , Severally Promises to Personal loan a sum of Payable amount together with interst rate @14.5% per year ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const Divider(),
            const Text(
              textAlign: TextAlign.start,
              "The Processing fees charges included GST to Loan.",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.start,
              "Agree  Accepted by Browser",
              style: TextStyle(fontSize: 22),
            ),
            Row(
              children: const [
                Text(
                  textAlign: TextAlign.start,
                  "Name:",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  textAlign: TextAlign.start,
                  "Application Loan",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  textAlign: TextAlign.start,
                  "Date:",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  textAlign: TextAlign.start,
                  "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: elevatedButton(() {
                Get.offAllNamed(Routes.homeView);
              },),
            ),
          ]),
        ),
      ),
    );
  }
}
