import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SimCheckerCTL extends GetxController {
  late final myweb;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    myweb = WebViewController()
      ..loadRequest(
        Uri.parse('https://cnic.sims.pk/'),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
