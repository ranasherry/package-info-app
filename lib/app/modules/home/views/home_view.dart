import 'package:all_network_packages/app/modules/home/controllers/applovin_provider.dart';
import 'package:all_network_packages/app/modules/routes/app_pages.dart';
import 'package:all_network_packages/app/modules/utills/images.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        // elevation: 1,
        backgroundColor: Color(0xFF760000),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
          child: Text(
            "All Network Packages",
            style: TextStyle(fontSize: SizeConfig.blockSizeHorizontal * 6),
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          // margin: EdgeInsets.only(bottom: SizeConfig.bannerMargin),
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: FittedBox(
              fit: BoxFit.fill, child: Image.asset(AppImages.backGround)),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 1,
                bottom: SizeConfig.bannerMargin),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.JazzHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks("Jazz", Color(0xFF960000),
                      Colors.red.shade200, Colors.white, AppImages.jazz),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.ZongHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks("Zong", Color(0xFF80B72F),
                      Colors.green.shade200, Colors.white, AppImages.zong),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.UfoneHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks("Ufone", Color(0xFFF25500),
                      Colors.orange.shade200, Colors.white, AppImages.ufone),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.TelenorHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks(
                      "Telenor",
                      Color(0xFF008ED0),
                      Colors.lightBlue.shade200,
                      Colors.white,
                      AppImages.telenor),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.WaridHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks("Warid", Color(0xFF001D76),
                      Colors.blue.shade200, Colors.white, AppImages.warid),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container networks(
      String text, Color color1, Color color2, Color color3, String image) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 1.5,
      ),
      height: SizeConfig.blockSizeVertical * 11,
      width: SizeConfig.blockSizeHorizontal * 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Padding(
        padding: EdgeInsets.only(
            right: SizeConfig.blockSizeHorizontal * 3,
            left: SizeConfig.blockSizeHorizontal * 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              scale: 1.09,
            ),
            horizontalSpace(SizeConfig.blockSizeHorizontal * 20),
            Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 5,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: color3,
            )
          ],
        ),
      ),
    );
  }
}
