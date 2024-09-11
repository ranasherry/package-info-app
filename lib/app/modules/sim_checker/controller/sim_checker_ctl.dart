import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SimCheckerCTL extends GetxController {
  late WebViewController myweb;

  RxBool isLoaded = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final argument = Get.arguments as String;
//     String javaCode = '''
//  javascript:(function() {
//   console.log('JavaScript function running!');
//            document.getElementsByClassName('site-header-inner-wrap')[0].style.display='none';
//   console.log('1');

//            document.getElementsByClassName('site-footer')[0].style.display='none';
//   console.log('2');

//            document.getElementsByClassName('kt-row-column-wrap')[0].style.display='none';
//   console.log('3');

//             var elements = document.querySelectorAll('.ad-container , .sponsored , .ad , .x2_ad , .ad_unit ');
//   console.log('4');

//   for (var i = 0; i < elements.length; i++) {
//     elements[i].style.display = 'none';
//   }
//   console.log('5');

//            document.getElementById('addShortcutBtn').style.display='none';
//   console.log('6');

//   document.getElementById('mobile-header').style.display='none';
//   console.log('7');

//            document.getElementById('installAppDiv').style.display='none';
//   console.log('8');

//   //          document.getElementById('google-center-div').style.display='none';
//   document.getElementsByClassName('adsbygoogle')[0].style.display='none';

//   console.log('9');

//   //          document.getElementById('ad').style.display='none';
//   // console.log('10');

//   //          document.getElementById('adsbygoogle').style.display='none';
//   // console.log('11');

// // const allElements = document.querySelectorAll("*");
// //             for (const element of allElements) {
// //     element.textContent = ""; // Set inner content to empty string
// //     console.log(element.nodeName);
// //   }
//   console.log('12');

//        }
//       )()
// ''';
    myweb = WebViewController()
      ..loadRequest(
        Uri.parse(argument),
        // Uri.parse('https://siminfopk.com/sim-owner-details/'),
        // Uri.parse('https://simownerdetails.org/'),
        // Uri.parse('https://google.com/'),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setOnConsoleMessage((message) {
        print('JavaScript console: ${message.message}');
      })
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            print('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
            // myweb.runJavaScript(javaCode);

            isLoaded.value = true;
          },
          onWebResourceError: (WebResourceError error) {
            print('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              print('blocking navigation to ${request.url}');

              return NavigationDecision.prevent;
            }

            if (request.url.startsWith('whatsapp://') ||
                request.url.contains('whatsapp://')) {
              openWhatsapp(request.url);
              return NavigationDecision.prevent;
            } else {}

            print('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
          onUrlChange: (UrlChange change) {
            print('url change to ${change.url}');
          },
          onHttpAuthRequest: (HttpAuthRequest request) {
            print(request);
          },
        ),
      );
    // ..runJavaScript(javaCode);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  openWhatsapp(String waUrl) async {
    var url = Uri.parse(waUrl);
    FirebaseAnalytics.instance
        .logShare(contentType: "WhatsAppOpen", itemId: waUrl, method: "wa");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
