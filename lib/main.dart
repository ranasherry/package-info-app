import 'package:all_network_packages/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'app/modules/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.landscapeRight,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    analytics.setAnalyticsCollectionEnabled(kReleaseMode);
    return GetMaterialApp(
      navigatorObservers: <NavigatorObserver>[observer],
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            foregroundColor: Colors.white),
        scaffoldBackgroundColor: Color(0xFF1E1E1E),
        // appBarTheme: AppBarTheme(backgroundColor: Colors.indigo)
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
