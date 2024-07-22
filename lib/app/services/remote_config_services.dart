import 'dart:math';
import 'dart:developer' as dp;

import 'package:all_network_packages/app/modules/utills/remoteConfigVariables.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart';

class RemoteConfigService {
  static final RemoteConfigService _instance = RemoteConfigService._internal();

  factory RemoteConfigService() {
    // Purchases.setEmail(email)
    return _instance;
  }

  RemoteConfigService._internal();

  final remoteConfig = FirebaseRemoteConfig.instance;

  Future<void> initialize() async {
    GetRemoteConfig().then((value) {
      SetRemoteConfig();

      remoteConfig.onConfigUpdated.listen((event) async {
        print("Remote Updated");
        //  await remoteConfig.activate();
        SetRemoteConfig();

        // Use the new config values here.
      });
    });
  }

  Future GetRemoteConfig() async {
    try {
      await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(seconds: 30),
      ));

      await remoteConfig.setDefaults(const {
        "adImageLink":
            "https://play-lh.googleusercontent.com/iFG_v2p-bg4P_in0ddqAzHl7y2Rb8bUC4edievI1w8TFQzM3RhvAFQGBtZdyVqorZg=w526-h296-rw",
        "adAppLink": "wifi.keymaster.wifipasswordshow.wifianalyzer.speedtest",
      });

      await remoteConfig.fetchAndActivate();
    } on Exception catch (e) {
      // TODO
      print("Remote Config error: $e");
    }
  }

  Future SetRemoteConfig() async {
    RCVariables.adImageLink.value = remoteConfig.getString('adImageLink');
    RCVariables.adAppLink.value = remoteConfig.getString('adAppLink');
  }
}
