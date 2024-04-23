import 'package:all_network_packages/app/modules/home/controllers/home_view_ctl.dart';
import 'package:get/get.dart';

class HomeViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeViewCTL());
  }
}
