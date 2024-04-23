import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utills/images.dart';
import '../../utills/size_config.dart';
import '../controllers/applovin_provider.dart';
import '../controllers/splash_screen_ctl.dart';

class SplashScreen extends GetView<SplashScreenCTL> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLovinProvider.instance.init();
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Container(
              height: SizeConfig.blockSizeVertical * 50,
              width: SizeConfig.blockSizeHorizontal * 70,
              child: Image.asset(
                AppImages.splashScreen,
                // fit: BoxFit.cover,
              )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 45,
                  top: SizeConfig.blockSizeVertical * 70),
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
