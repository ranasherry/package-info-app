import 'package:all_network_packages/app/modules/routes/app_pages.dart';
import 'package:all_network_packages/app/modules/utills/images.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/applovin_provider.dart';

class JazzHome extends StatelessWidget {
  const JazzHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF960000),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Jazz Offer"),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.bannerMargin),
        child: Column(
          children: [
            Container(
              height: SizeConfig.blockSizeVertical * 20,
              width: SizeConfig.screenWidth,
              child: Image.asset(
                AppImages.jazz_home,
                fit: BoxFit.fill,
              ),
            ),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.JazzCall);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: jazzoffer(Icons.call_rounded, "Call Offer")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.JazzSMS);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: jazzoffer(Icons.mail_outline, "SMS Offer")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.JazzInternet);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: jazzoffer(Icons.wifi_rounded, "Internet Offer")),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.JazzOtherOffer);
                  AppLovinProvider.instance.showInterstitial();
                },
                child: jazzoffer(Icons.more_horiz_outlined, "Other Offer"))
          ],
        ),
      ),
    );
  }

  Container jazzoffer(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
      height: SizeConfig.blockSizeVertical * 7,
      width: SizeConfig.blockSizeHorizontal * 90,
      decoration: BoxDecoration(
          // color: Color(0xFF960000),
          gradient: LinearGradient(
            colors: [
              Color(0xFF960000),
              Colors.redAccent,
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
              color: Colors.orange,
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
