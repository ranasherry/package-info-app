import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/home/controllers/ufone_ctl.dart';
import 'package:all_network_packages/app/modules/utills/app_strings.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../utills/size_config.dart';

class UfoneSMS extends GetView<UfoneCTL> {
  const UfoneSMS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF25500),
        title: Text("Ufone SMS Offer"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              AppLovinProvider.instance.showInterstitial();
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Container(
        // margin: EdgeInsets.only(bottom: SizeConfig.bannerMargin),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 60,
                // color: Colors.amber,
                child: Center(
                  child: MaxAdView(
                      adUnitId: AppStrings.MAX_BANNER_ID,
                      adFormat: AdFormat.banner,
                      listener: AdViewAdListener(onAdLoadedCallback: (ad) {
                        print('Banner widget ad loaded from ' + ad.networkName);
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
              Obx(
                () => controller.UfoneSMSList.length != 0
                    ? Obx(
                        () => Expanded(
                          child: ListView.builder(
                              // physics: NeverScrollableScrollPhysics(),
                              // shrinkWrap: true,
                              itemCount: controller.UfoneSMSList.length,
                              itemBuilder: (context, index) {
                                return ufonesms(index);
                              }),
                        ),
                      )
                    : Column(
                        children: [
                          // Image.asset(
                          //   AppIcons.no_record,
                          //   height: SizeConfig.blockSizeVertical * 12,
                          //   color: Colors.grey,
                          // ),
                          verticalSpace(SizeConfig.blockSizeVertical * 2),
                          Text(
                            "No package found",
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal * 6,
                                color: Colors.grey.shade700),
                          ),
                        ],
                      ),
              )
              // ufonesms(),
              // ufonesms(),
              // ufonesms(),
              // ufonesms(),
              // ufonesms()
            ],
          ),
        ),
      ),
    );
  }

  Container ufonesms(int index) {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 1,
          bottom: SizeConfig.blockSizeVertical * 2,
          left: SizeConfig.blockSizeHorizontal * 1.5,
          right: SizeConfig.blockSizeHorizontal * 1.5),
      height: SizeConfig.blockSizeVertical * 23,
      width: SizeConfig.blockSizeHorizontal * 96,
      decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [
          //     Colors.red.shade700,
          //     Colors.grey,
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.black,
          borderRadius:
              BorderRadius.circular(SizeConfig.blockSizeHorizontal * 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "${controller.UfoneSMSList[index].bundle}",
            style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 5,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 2,
                right: SizeConfig.blockSizeHorizontal * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Validity: ",
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 4,
                        // color: Colors.black
                      ),
                      children: [
                        TextSpan(
                            text: "${controller.UfoneSMSList[index].validity}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent))
                      ]),
                ),
                RichText(
                    text: TextSpan(
                        text: "Rs: ",
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 4,
                          // color: Colors.black
                        ),
                        children: [
                      TextSpan(
                          text: "${controller.UfoneSMSList[index].rs}/-",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green))
                    ]))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "OnNet",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      height: SizeConfig.blockSizeVertical * 3,
                      width: SizeConfig.blockSizeHorizontal * 15,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.UfoneSMSList[index].onnet}",
                        style: TextStyle(color: Colors.white),
                      ))),
                  Text(
                    "Minutes",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "OffNet",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      height: SizeConfig.blockSizeVertical * 3,
                      width: SizeConfig.blockSizeHorizontal * 15,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.UfoneSMSList[index].offnet}",
                        style: TextStyle(color: Colors.white),
                      ))),
                  Text(
                    "Minutes",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "SMS",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      height: SizeConfig.blockSizeVertical * 3,
                      width: SizeConfig.blockSizeHorizontal * 15,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.UfoneSMSList[index].sms}",
                        style: TextStyle(color: Colors.white),
                      ))),
                  Text(
                    "Messages",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Internet",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      height: SizeConfig.blockSizeVertical * 3,
                      width: SizeConfig.blockSizeHorizontal * 15,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.UfoneSMSList[index].internet}",
                        style: TextStyle(color: Colors.white),
                      ))),
                  Text(
                    "Mbs",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              controller.currentPackage.value = controller.UfoneSMSList[index];
              Get.toNamed(Routes.UfoneViewMore);
              AppLovinProvider.instance.showInterstitial();
            },
            child: Container(
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 45,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.shade700,
                  borderRadius:
                      BorderRadius.circular(SizeConfig.blockSizeHorizontal * 5),
                ),
                child: Center(
                    child: Text(
                  "View More",
                  style: TextStyle(color: Colors.white),
                ))),
          )
        ],
      ),
    );
  }
}
