import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/home/controllers/settings_ctl.dart';
import 'package:all_network_packages/app/modules/utills/app_strings.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
import 'package:applovin_max/applovin_max.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';

class SettingsView extends GetView<SettingsCTL> {
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF760000),
          leading: GestureDetector(
            onTap: () {
              AppLovinProvider.instance.showInterstitial();
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Settings",
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.blockSizeHorizontal * 6,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          verticalSpace(SizeConfig.blockSizeVertical * 1),
          Container(
            // height: 60,
            // color: Colors.amber,
            child: Center(
              child: MaxAdView(
                  adUnitId: AppStrings.MAX_BANNER_ID,
                  adFormat: AdFormat.banner,
                  listener: AdViewAdListener(onAdLoadedCallback: (ad) {
                    print('Banner widget ad loaded from ' + ad.networkName);
                  }, onAdLoadFailedCallback: (adUnitId, error) {
                    print('Banner widget ad failed to load with error code ' +
                        error.code.toString() +
                        ' and message: ' +
                        error.message);
                  }, onAdClickedCallback: (ad) {
                    print('Banner widget ad clicked');
                  }, onAdExpandedCallback: (ad) {
                    print('Banner widget ad expanded');
                  }, onAdCollapsedCallback: (ad) {
                    print('Banner widget ad collapsed');
                  })),
            ),
          ),
          GestureDetector(
            onTap: () {
              LaunchReview.launch(
                androidAppId: "com.pk.allnetworkpackages",
              );
            },
            child: settings_btn(
                context,
                "Rate us",
                CupertinoIcons.hand_thumbsup_fill,
                "Help us to grow with your 5 star",
                Icons.arrow_forward_ios_rounded),
          ),
          GestureDetector(
            onTap: () {
              controller.ShareApp();
            },
            child: settings_btn(
                context,
                "Invite your friends",
                Icons.person_add_alt_1,
                "Spread the World",
                Icons.arrow_forward_ios_rounded),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 5),
          Container(
            child: Center(
              child: MaxAdView(
                  adUnitId: AppStrings.MAX_MREC_ID,
                  adFormat: AdFormat.mrec,
                  listener: AdViewAdListener(onAdLoadedCallback: (ad) {
                    print('Mrec widget ad loaded from ' + ad.networkName);
                  }, onAdLoadFailedCallback: (adUnitId, error) {
                    print('Mrec widget ad failed to load with error code ' +
                        error.code.toString() +
                        ' and message: ' +
                        error.message);
                  }, onAdClickedCallback: (ad) {
                    print('Mrec widget ad clicked');
                  }, onAdExpandedCallback: (ad) {
                    print('Mrec widget ad expanded');
                  }, onAdCollapsedCallback: (ad) {
                    print('Mrec widget ad collapsed');
                  })),
            ),
          ),
        ]));
  }

  Padding settings_btn(BuildContext context, String text1, IconData icon1,
      String text2, IconData icon2) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 4,
          left: SizeConfig.blockSizeHorizontal * 7,
          right: SizeConfig.blockSizeHorizontal * 5),
      child: Row(
        children: [
          Icon(
            icon1,
            color: Colors.white,
            size: SizeConfig.blockSizeHorizontal * 7,
          ),
          horizontalSpace(SizeConfig.blockSizeHorizontal * 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 4,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                text2,
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 3,
                    color: Colors.grey),
              )
            ],
          ),
          Spacer(),
          Icon(
            icon2,
            color: Colors.white,
            size: SizeConfig.blockSizeHorizontal * 6,
          )
        ],
      ),
    );
  }
}
