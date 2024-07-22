import 'package:all_network_packages/app/modules/utills/remoteConfigVariables.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';

Obx CustomeAd() {
  return Obx(
    () => GestureDetector(
      onTap: () {
        LaunchReview.launch(
          androidAppId: RCVariables.adAppLink.value,
        );
        FirebaseAnalytics.instance.logSelectContent(
            contentType: "Custome Ad", itemId: RCVariables.adAppLink.value);
      },
      child: Container(
        height: SizeConfig.blockSizeVertical * 7,
        width: SizeConfig.blockSizeHorizontal * 75,
        decoration: BoxDecoration(),
        child: Image.network(
          RCVariables.adImageLink.value,
          fit: BoxFit.fill,
        ),
        margin: EdgeInsets.only(
          bottom: SizeConfig.blockSizeVertical * 1.5,
        ),
      ),
    ),
  );
}
