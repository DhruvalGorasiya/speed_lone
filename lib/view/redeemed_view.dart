import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/intl.dart';
import 'package:lone_counter/controller/redeemed_controller.dart';
import 'package:lone_counter/model/redeemed_model.dart';
import 'package:lone_counter/servics/firebase_servics.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/utils/image_constant.dart';
import 'package:lone_counter/utils/text_style_constant.dart';
import 'package:store_redirect/store_redirect.dart';

class RedeemedView extends StatelessWidget {

final RedeemedController controller =  Get.put(RedeemedController());
   RedeemedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        SafeArea(
          child: Stack(
            children: [
              Image.asset('assets/backgrounds/recomadition.jpg',
                  height: Get.height, width: Get.width, fit: BoxFit.fill),
              Padding(
                padding: EdgeInsets.only(top: Get.height / 3.6),
                child: ListView.builder(
                  itemCount: controller.data.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _child(
                        maxLoneAmount: controller
                            .data[index]['max_lone_amount'],
                        minLoneAmount: controller
                            .data[index]['min_lone_amount'],
                        name: controller.data[index]['name'],
                        loneInterest: controller.data[index]['interest_rate'],
                        apkId: controller.data[index]['lanuch_app_id'],
                        imgUrl: controller.data[index]['img_url']
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
  Widget _child(
      {required int maxLoneAmount,
      required int minLoneAmount,
      required String loneInterest,
      required String imgUrl,
        required String apkId,
      required String name}) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.04,
        vertical: Get.width * 0.02,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: ColorConstant.black.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(-3, 6))
          ],
          color: ColorConstant.white),
      // height: 100,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(imgUrl),
                )
    ),
                height: Get.height * 0.05,
                width: Get.width * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.04),
                child: SizedBox(
                  width: 175,
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleConstant.bold18
                        .copyWith(color: ColorConstant.black),),),),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(ImageConstant.loneIcon),
                  )),
                  height: Get.height * 0.05,
                  width: Get.width * 0.1,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: Get.width * 0.04),
                  child: Container(
                    width: 175,
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleConstant.bold18
                          .copyWith(color: ColorConstant.black),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                 await StoreRedirect.redirect(androidAppId: apkId);
                },
                child: Image.asset(
                  ImageConstant.apply,
                  height: Get.height * 0.05,),),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    ImageConstant.apply,
                    height: Get.height * 0.05,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                loneInterest,
                style: TextStyleConstant.bold18
                    .copyWith(color: ColorConstant.black),
              ),
              Text(
                '₹ ${NumberFormat.currency(locale: 'HI').format(minLoneAmount).replaceAll("INR", '')} - ${NumberFormat.currency(locale: "HI").format(maxLoneAmount).replaceAll("INR", '')}',
                style: TextStyleConstant.bold18
                    .copyWith(color: ColorConstant.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily interest rate',
                style: TextStyleConstant.bold16.copyWith(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Lone Amount',
                style: TextStyleConstant.bold16.copyWith(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
