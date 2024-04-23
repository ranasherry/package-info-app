import 'package:all_network_packages/app/modules/home/controllers/ufone_ctl.dart';
import 'package:get/get.dart';

class UfoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UfoneCTL());
  }
}
