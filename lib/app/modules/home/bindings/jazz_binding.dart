import 'package:all_network_packages/app/modules/home/controllers/jazz_ctl.dart';
import 'package:get/get.dart';

class JazzBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(JazzCTL());
  }
}
