import 'package:all_network_packages/app/modules/home/controllers/sim_checker_ctl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimCheckerView extends GetView<SimCheckerCTL> {
  const SimCheckerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001D76),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Sim Checker"),
        centerTitle: true,
      ),
    );
  }
}
