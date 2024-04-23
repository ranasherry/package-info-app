import 'package:all_network_packages/app/modules/home/controllers/zong_ctl.dart';
import 'package:get/get.dart';

class ZongBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ZongCTL());
  }
}
