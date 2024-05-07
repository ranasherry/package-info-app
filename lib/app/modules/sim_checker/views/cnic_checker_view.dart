import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CnicCheckerView extends StatelessWidget {
  const CnicCheckerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001D76),
        leading: GestureDetector(
            onTap: () {
              AppLovinProvider.instance.showInterstitial();
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("CNIC Checker"),
        centerTitle: true,
      ),
      body: MyWebViewWidget(controller: controller.myweb),
    );
  }
}
