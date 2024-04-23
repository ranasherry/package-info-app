import 'package:all_network_packages/app/modules/home/controllers/telenor_ctl.dart';
import 'package:get/get.dart';

class TelenorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TelenorCTL());
  }
}
