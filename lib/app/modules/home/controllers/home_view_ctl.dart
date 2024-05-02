import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utills/app_strings.dart';

class HomeViewCTL extends GetxController with WidgetsBindingObserver {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    if (AppLovinProvider.instance.isInitialized.value) {
      AppLovinMAX.setAppOpenAdListener(AppOpenAdListener(
        onAdLoadedCallback: (ad) {},
        onAdLoadFailedCallback: (adUnitId, error) {},
        onAdDisplayedCallback: (ad) {},
        onAdDisplayFailedCallback: (ad, error) {
          AppLovinMAX.loadAppOpenAd(AppStrings.MAX_APPOPEN_ID);
        },
        onAdClickedCallback: (ad) {},
        onAdHiddenCallback: (ad) {
          AppLovinMAX.loadAppOpenAd(AppStrings.MAX_APPOPEN_ID);
        },
        onAdRevenuePaidCallback: (ad) {},
      ));

      AppLovinMAX.loadAppOpenAd(AppStrings.MAX_APPOPEN_ID);
    }

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    print("AppState  : ${state}");
    switch (state) {
      case AppLifecycleState.resumed:
        await showAdIfReady();
        print("App Resume :");
        break;

      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
        break;
    }
  }

  Future<void> showAdIfReady() async {
    if (!AppLovinProvider.instance.isInitialized.value) {
      return;
    }

    bool isReady =
        (await AppLovinMAX.isAppOpenAdReady(AppStrings.MAX_APPOPEN_ID))!;
    if (isReady) {
      AppLovinMAX.showAppOpenAd(AppStrings.MAX_APPOPEN_ID);
    } else {
      AppLovinMAX.loadAppOpenAd(AppStrings.MAX_APPOPEN_ID);
    }
  }
}
