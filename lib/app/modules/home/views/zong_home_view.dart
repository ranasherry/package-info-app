import 'package:all_network_packages/app/modules/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utills/images.dart';
import '../../utills/size_config.dart';
import '../controllers/applovin_provider.dart';

class ZongHome extends StatelessWidget {
  const ZongHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF80B72F),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Zong Offer"),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.bannerMargin),
        child: Column(
          children: [
            Container(
              height: SizeConfig.blockSizeVertical * 20,
              width: SizeConfig.screenWidth,
              child: Image.asset(
                AppImages.zong_home,
                fit: BoxFit.fill,
              ),
            ),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.ZongCall);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: zongoffer(Icons.call_rounded, "Call Offer")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.ZongSMS);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: zongoffer(Icons.mail_outline, "SMS Offer")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.ZongInternet);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: zongoffer(Icons.wifi_rounded, "Internet Offer")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.ZongOther);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: zongoffer(Icons.more_horiz_outlined, "Other Offer"))
          ],
        ),
      ),
    );
  }

  Container zongoffer(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
      height: SizeConfig.blockSizeVertical * 7,
      width: SizeConfig.blockSizeHorizontal * 90,
      decoration: BoxDecoration(
          // color: Color(0xFF960000),
          gradient: LinearGradient(
            colors: [
              Color(0xFF80B72F),
              Colors.lightGreenAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 0.5,
                right: SizeConfig.blockSizeHorizontal * 5),
            height: SizeConfig.blockSizeVertical * 12,
            width: SizeConfig.blockSizeHorizontal * 12.5,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Icon(
              icon,
              size: SizeConfig.blockSizeHorizontal * 8,
              color: Colors.pink,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 5,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
