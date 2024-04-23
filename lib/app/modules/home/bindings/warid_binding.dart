import 'package:all_network_packages/app/modules/home/controllers/warid_ctl.dart';
import 'package:get/get.dart';
import '../controllers/jazz_ctl.dart';

class WaridBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WaridCTL());
  }
}
