import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/home/controllers/warid_ctl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../utills/size_config.dart';

class WaridOther extends GetView<WaridCTL> {
  const WaridOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001D76),
        title: Text("Warid Other Offer"),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.bannerMargin),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => controller.waridOther.length != 0
                      ? Obx(
                          () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.waridOther.length,
                              itemBuilder: (context, index) {
                                return waridother(index);
                              }),
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
                // waridother(),
                // waridother(),
                // waridother(),
                // waridother(),
                // waridother()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container waridother(int index) {
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
            "${controller.waridOther[index].bundle}",
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
                            text: "${controller.waridOther[index].validity}",
                            style: TextStyle(fontWeight: FontWeight.bold))
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
                          text: "${controller.waridOther[index].rs}/-",
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
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.waridOther[index].onnet}",
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
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.waridOther[index].offnet}",
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
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.waridOther[index].sms}",
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
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeHorizontal * 5)),
                      child: Center(
                          child: Text(
                        "${controller.waridOther[index].internet}",
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
              controller.currentPackage.value = controller.waridOther[index];
              Get.toNamed(Routes.WaridViewMore);
              AppLovinProvider.instance.showInterstitial();
            },
            child: Container(
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 45,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.shade700,
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
