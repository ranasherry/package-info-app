import 'package:all_network_packages/app/modules/home/controllers/splash_screen_ctl.dart';
import 'package:get/get.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenCTL());
  }
}
