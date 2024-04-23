import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_pages.dart';

class SplashScreenCTL extends GetxController {
  bool? firstTime = false;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    configLoading();
    // AppLovinProvider.instance.init();

    Timer(Duration(seconds: 3), () {
      CheckUser();
    });
  }

  CheckUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    firstTime = prefs.getBool('first_time');

    var _duration = new Duration(seconds: 2);

    Get.offNamed(Routes.HomeView);

    // if (firstTime != null && !firstTime!) {
    //   // Not first time

    //   print("Not First time");
    //   print("${firstTime}");
    //   Get.offNamed(Routes.HomeScreen);
    // } else {
    //   // First time
    //   //TODO: Uncomment Before Publish
    //   prefs.setBool('first_time', false);
    //   print("First time");
    //   print("${firstTime}");
    //   Get.offNamed(Routes.HomeScreen);
    //   // show = false;
    // }
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.cubeGrid
      ..loadingStyle = EasyLoadingStyle.light
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..userInteractions = true
      ..dismissOnTap = false;
    // ..customAnimation = CustomAnimation();
  }
}
