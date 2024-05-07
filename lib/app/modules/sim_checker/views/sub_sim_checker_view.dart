import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:all_network_packages/app/modules/routes/app_pages.dart';
import 'package:all_network_packages/app/modules/utills/size_config.dart';
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
                      color: Colors.blue,
                    ),
                    // margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.sim_card_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'SIM Checker',
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'CNIC Checker',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
