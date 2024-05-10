import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/home/controllers/ufone_ctl.dart';
import 'package:all_network_packages/app/modules/utills/app_strings.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utills/size_config.dart';

class UfoneViewMore extends GetView<UfoneCTL> {
  const UfoneViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF25500),
        title: Text("Get Sim Packages"),
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
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                height: SizeConfig.blockSizeVertical * 50,
                width: SizeConfig.blockSizeHorizontal * 96,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        SizeConfig.blockSizeHorizontal * 5)),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 2,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 2),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Detail:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Text(
                                    "${controller.currentPackage.value.bundle}"))
                          ],
                        ),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Valid For:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.validity}"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Onnet:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.onnet} Minutes"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Offnet:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.offnet} Minutes"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "SMS:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.sms} Messages"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Mbs:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.internet}"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Price:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.rs}/-"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Activation:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.activation}"))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "De-activation:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "${controller.currentPackage.value.deactivation}"))
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.ufoneSharePackage(
                                  controller.currentPackage.value);
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 1),
                              height: SizeConfig.blockSizeVertical * 6,
                              width: SizeConfig.blockSizeHorizontal * 40,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF25500),
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.blockSizeHorizontal * 3)),
                              child: Center(
                                  child: Text(
                                "Share",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.packageActivation();
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 1),
                              height: SizeConfig.blockSizeVertical * 6,
                              width: SizeConfig.blockSizeHorizontal * 40,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF25500),
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.blockSizeHorizontal * 3)),
                              child: Center(
                                  child: Text(
                                "Activate",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(SizeConfig.blockSizeVertical * 1),
              Container(
                // color: Colors.amber,
                child: Center(
                  child: MaxAdView(
                      adUnitId: AppStrings.MAX_MREC_ID,
                      adFormat: AdFormat.mrec,
                      listener: AdViewAdListener(onAdLoadedCallback: (ad) {
                        print('Mrec widget ad loaded from ' + ad.networkName);
                      }, onAdLoadFailedCallback: (adUnitId, error) {
                        print('Mrec widget ad failed to load with error code ' +
                            error.code.toString() +
                            ' and message: ' +
                            error.message);
                      }, onAdClickedCallback: (ad) {
                        print('Mrec widget ad clicked');
                      }, onAdExpandedCallback: (ad) {
                        print('Mrec widget ad expanded');
                      }, onAdCollapsedCallback: (ad) {
                        print('Mrec widget ad collapsed');
                      })),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
