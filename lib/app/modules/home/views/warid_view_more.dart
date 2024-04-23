import 'package:all_network_packages/app/modules/home/controllers/warid_ctl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utills/size_config.dart';

class WaridViewMore extends GetView<WaridCTL> {
  const WaridViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001D76),
        title: Text("Get Sim Packages"),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.bannerMargin),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
                height: SizeConfig.blockSizeVertical * 60,
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
                            top: SizeConfig.blockSizeVertical * 4),
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
                      GestureDetector(
                        onTap: () {
                          controller.packageActivation();
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 2),
                          height: SizeConfig.blockSizeVertical * 7,
                          width: SizeConfig.blockSizeHorizontal * 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF001D76),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
