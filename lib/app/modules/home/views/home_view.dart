import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/routes/app_pages.dart';
import 'package:all_network_packages/app/modules/utills/app_strings.dart';
import 'package:all_network_packages/app/modules/utills/images.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/cupertino.dart';
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
        title: Text(
          "All Network Packages",
          style: TextStyle(
              fontSize: SizeConfig.blockSizeHorizontal * 6,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.settings_sharp,
              ),
            ),
          )
        ],
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
              // bottom: SizeConfig.bannerMargin
            ),
            child: Column(
              children: [
                Container(
                  height: SizeConfig.blockSizeVertical * 16,
                  width: SizeConfig.blockSizeHorizontal * 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          SizeConfig.blockSizeHorizontal * 2),
                      color: Color(0xFF3C8DBC)
                      // gradient: LinearGradient(
                      //     colors: [
                      //       Colors.green.shade900,
                      //       Colors.green.shade900
                      //     ],
                      //     // colors: [Color(0xFF001D76), Colors.blue.shade200],
                      //     begin: Alignment.topCenter,
                      //     end: Alignment.bottomCenter)
                      ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 3,
                        right: SizeConfig.blockSizeHorizontal * 2,
                        bottom: SizeConfig.blockSizeVertical * 0.5),
                    child: Stack(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image.asset(
                            AppImages.sim_card,
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockSizeVertical * 16,
                          width: SizeConfig.blockSizeHorizontal * 95,
                          color: Color(0xFF3C8DBC).withOpacity(0.7),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "SIM CHECKER",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "To find the total number of SIM's registered to your CNIC,",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 4,
                                  color: Colors.white),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.SIMCHECKERVIEW);
                                },
                                child: Container(
                                  height: SizeConfig.blockSizeVertical * 4,
                                  width: SizeConfig.blockSizeHorizontal * 35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.blockSizeHorizontal * 7)),
                                  child: Center(
                                    child: Text(
                                      "Check Number of Sims >>",
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal *
                                                  2.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade700),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Get.toNamed(Routes.JazzHome);
                //     AppLovinProvider.instance.showInterstitial();
                //   },
                //   child: networks("Jazz", Color(0xFF001D76),
                //       Colors.blue.shade200, Colors.white, AppImages.jazz, 1.09),
                // ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.ZongHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks(
                      "Zong",
                      Color(0xFF80B72F),
                      Colors.green.shade200,
                      Colors.white,
                      AppImages.zong,
                      1.09),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.UfoneHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks(
                      "Ufone",
                      Color(0xFFF25500),
                      Colors.orange.shade200,
                      Colors.white,
                      AppImages.ufone,
                      1.09),
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
                      AppImages.telenor,
                      1.09),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.JazzHome);
                    AppLovinProvider.instance.showInterstitial();
                  },
                  child: networks(
                      "Jazz & Warid",
                      Color(0xFF960000),
                      Colors.red.shade200,
                      Colors.white,
                      AppImages.jazz_warid,
                      3),
                ),
                Spacer(),
                Container(
                  height: 60,
                  // color: Colors.amber,
                  child: Center(
                    child: MaxAdView(
                        adUnitId: AppStrings.MAX_BANNER_ID,
                        adFormat: AdFormat.banner,
                        listener: AdViewAdListener(onAdLoadedCallback: (ad) {
                          print(
                              'Banner widget ad loaded from ' + ad.networkName);
                        }, onAdLoadFailedCallback: (adUnitId, error) {
                          print(
                              'Banner widget ad failed to load with error code ' +
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
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container networks(String text, Color color1, Color color2, Color color3,
      String image, double scale) {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            scale: scale,
          ),
          // horizontalSpace(SizeConfig.blockSizeHorizontal * 20),
          Padding(
            padding: EdgeInsets.only(
              right: SizeConfig.blockSizeHorizontal * 10,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 5,
                color: Colors.white,
              ),
            ),
          ),
          // Spacer(),

          Icon(
            Icons.arrow_forward_ios_outlined,
            color: color3,
          )
        ],
      ),
    );
  }
}
