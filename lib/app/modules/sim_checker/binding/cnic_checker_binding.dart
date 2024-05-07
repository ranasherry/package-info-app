import 'package:all_network_packages/app/modules/sim_checker/controller/cnic_checker_ctl.dart';
import 'package:get/get.dart';

class CnicCheckerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CnicCheckerCTL());
  }
}
