import 'package:get/get.dart';

import '../controllers/location_finder_controller.dart';

class LocationFinderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationFinderController>(
      () => LocationFinderController(),
    );
  }
}
