import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/sim_checker/controller/sim_checker_ctl.dart';
import 'package:all_network_packages/app/modules/utills/helping_widets/my_webview_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SimCheckerView extends GetView<SimCheckerCTL> {
  const SimCheckerView({super.key});

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
        title: Text("Sim Status"),
        centerTitle: true,
      ),
      body: MyWebViewWidget(controller: controller.myweb),
    );
  }
}
