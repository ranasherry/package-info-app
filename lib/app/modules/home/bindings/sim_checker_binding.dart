import 'package:all_network_packages/app/modules/home/controllers/sim_checker_ctl.dart';
import 'package:get/get.dart';

class SimCheckerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SimCheckerCTL());
  }
}
