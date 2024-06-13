import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/routes/app_pages.dart';
import 'package:all_network_packages/app/modules/utills/app_strings.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubSimCheckerView extends StatelessWidget {
  const SubSimCheckerView({super.key});

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
        title: Text("Sim Checker"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 6),
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.SIMCHECKERVIEW);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFCADDEE),
                      borderRadius: BorderRadius.circular(
                          SizeConfig.blockSizeHorizontal * 3),
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black, // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 10, // Blur radius
                          offset: Offset(0, 5), // Offset in x and y direction
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.sim_card_outlined,
                          color: Colors.blue,
                          size: SizeConfig.blockSizeHorizontal * 8,
                        ),
                        Text(
                          'SIM Checker',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal * 4,
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockSizeVertical * 3.5,
                          width: SizeConfig.blockSizeHorizontal * 25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal * 7)),
                          child: Center(
                            child: Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal * 2.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.CNICCHECKERVIEW);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFCADDEE),
                      borderRadius: BorderRadius.circular(
                          SizeConfig.blockSizeHorizontal * 3),
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black, // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 10, // Blur radius
                          offset: Offset(0, 5), // Offset in x and y direction
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.credit_card_rounded,
                          color: Colors.blue,
                          size: SizeConfig.blockSizeHorizontal * 8,
                        ),
                        Text(
                          'CNIC Checker',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal * 4,
                          ),
                        ),
                        Container(
                          height: SizeConfig.blockSizeVertical * 3.5,
                          width: SizeConfig.blockSizeHorizontal * 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(
                                SizeConfig.blockSizeHorizontal * 7),
                          ),
                          child: Center(
                            child: Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal * 2.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Get.toNamed(Routes.LOCATION_FINDER);
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Color(0xFFCADDEE),
                //       borderRadius: BorderRadius.circular(
                //           SizeConfig.blockSizeHorizontal * 3),
                //       border: Border.all(color: Colors.blue),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black, // Shadow color
                //           spreadRadius: 2, // Spread radius
                //           blurRadius: 10, // Blur radius
                //           offset: Offset(0, 5), // Offset in x and y direction
                //         ),
                //       ],
                //     ),
                //     margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 2),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Icon(
                //           Icons.credit_card_rounded,
                //           color: Colors.blue,
                //           size: SizeConfig.blockSizeHorizontal * 8,
                //         ),
                //         Text(
                //           'Sim Location Finder',
                //           style: TextStyle(
                //             color: Colors.black,
                //             fontSize: SizeConfig.blockSizeHorizontal * 4,
                //           ),
                //         ),
                //         Container(
                //           height: SizeConfig.blockSizeVertical * 3.5,
                //           width: SizeConfig.blockSizeHorizontal * 25,
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             border: Border.all(color: Colors.blue),
                //             borderRadius: BorderRadius.circular(
                //                 SizeConfig.blockSizeHorizontal * 7),
                //           ),
                //           child: Center(
                //             child: Text(
                //               "Click Here",
                //               style: TextStyle(
                //                   fontSize:
                //                       SizeConfig.blockSizeHorizontal * 2.5,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.blue.shade700),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
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
    );
  }
}
