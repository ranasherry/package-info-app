import 'package:all_network_packages/app/modules/home/bindings/jazz_binding.dart';
import 'package:all_network_packages/app/modules/home/bindings/sim_checker_binding.dart';
import 'package:all_network_packages/app/modules/home/bindings/telenor_binding.dart';
import 'package:all_network_packages/app/modules/home/bindings/ufone_binding.dart';
import 'package:all_network_packages/app/modules/home/bindings/warid_binding.dart';
import 'package:all_network_packages/app/modules/home/bindings/zong_binding.dart';
import 'package:all_network_packages/app/modules/home/views/jazz_call_offer.dart';
import 'package:all_network_packages/app/modules/home/views/jazz_home_view.dart';
import 'package:all_network_packages/app/modules/home/views/jazz_internet.dart';
import 'package:all_network_packages/app/modules/home/views/jazz_other.dart';
import 'package:all_network_packages/app/modules/home/views/jazz_sms.dart';
import 'package:all_network_packages/app/modules/home/views/jazz_view_more.dart';
import 'package:all_network_packages/app/modules/home/views/sim_checker_view.dart';
import 'package:all_network_packages/app/modules/home/views/splash_screen.dart';
import 'package:all_network_packages/app/modules/home/views/telenor_call.dart';
import 'package:all_network_packages/app/modules/home/views/telenor_internet.dart';
import 'package:all_network_packages/app/modules/home/views/telenor_other.dart';
import 'package:all_network_packages/app/modules/home/views/telenor_sms.dart';
import 'package:all_network_packages/app/modules/home/views/telenor_view_more.dart';
import 'package:all_network_packages/app/modules/home/views/ufone_call.dart';
import 'package:all_network_packages/app/modules/home/views/ufone_home_view.dart';
import 'package:all_network_packages/app/modules/home/views/ufone_internet.dart';
import 'package:all_network_packages/app/modules/home/views/ufone_other.dart';
import 'package:all_network_packages/app/modules/home/views/ufone_sms.dart';
import 'package:all_network_packages/app/modules/home/views/warid_call.dart';
import 'package:all_network_packages/app/modules/home/views/warid_home_view.dart';
import 'package:all_network_packages/app/modules/home/views/warid_internet.dart';
import 'package:all_network_packages/app/modules/home/views/warid_sms.dart';
import 'package:all_network_packages/app/modules/home/views/warid_view_more.dart';
import 'package:all_network_packages/app/modules/home/views/zong_call.dart';
import 'package:all_network_packages/app/modules/home/views/zong_home_view.dart';
import 'package:all_network_packages/app/modules/home/views/zong_internet.dart';
import 'package:all_network_packages/app/modules/home/views/zong_other.dart';
import 'package:all_network_packages/app/modules/home/views/zong_sms.dart';
import 'package:get/get.dart';

import '../home/bindings/home_view_binding.dart';
import '../home/bindings/splash_Screen_binding.dart';
import '../home/views/home_view.dart';
import '../home/views/telenor_home_view.dart';
import '../home/views/ufone_view_more.dart';
import '../home/views/warid_other.dart';
import '../home/views/zong_view_more.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SplashScreen;

  static final routes = [
    GetPage(
        name: _Paths.SplashScreen,
        page: () => SplashScreen(),
        binding: SplashScreenBinding()),
    GetPage(
        name: _Paths.HomeView,
        page: () => HomeView(),
        binding: HomeViewBinding()),
    GetPage(
      name: _Paths.JazzHome,
      page: () => JazzHome(),
      // binding: HomeViewBinding()
    ),
    GetPage(
      name: _Paths.ZongHome,
      page: () => ZongHome(),
      // binding: HomeViewBinding()
    ),
    GetPage(
      name: _Paths.UfoneHome,
      page: () => UfoneHome(),
      // binding: HomeViewBinding()
    ),
    GetPage(
      name: _Paths.TelenorHome,
      page: () => TelenorHome(),
      // binding: HomeViewBinding()
    ),
    GetPage(
      name: _Paths.WaridHome,
      page: () => WaridHome(),
      // binding: HomeViewBinding()
    ),
    GetPage(
        name: _Paths.JazzCall, page: () => JazzCall(), binding: JazzBinding()),
    GetPage(
        name: _Paths.JazzSMS, page: () => JazzSMS(), binding: JazzBinding()),
    GetPage(
        name: _Paths.JazzInternet,
        page: () => JazzInternet(),
        binding: JazzBinding()),
    GetPage(
        name: _Paths.JazzOtherOffer,
        page: () => JazzOtherOffer(),
        binding: JazzBinding()),
    GetPage(
        name: _Paths.ZongCall, page: () => ZongCall(), binding: ZongBinding()),
    GetPage(
        name: _Paths.ZongSMS, page: () => ZongSMS(), binding: ZongBinding()),
    GetPage(
        name: _Paths.ZongInternet,
        page: () => ZongInternet(),
        binding: ZongBinding()),
    GetPage(
        name: _Paths.ZongOther,
        page: () => ZongOther(),
        binding: ZongBinding()),
    GetPage(
        name: _Paths.UfoneCall,
        page: () => UfoneCall(),
        binding: UfoneBinding()),
    GetPage(
        name: _Paths.UfoneSMS, page: () => UfoneSMS(), binding: UfoneBinding()),
    GetPage(
        name: _Paths.UfoneInternet,
        page: () => UfoneInternet(),
        binding: UfoneBinding()),
    GetPage(
        name: _Paths.UfoneOther,
        page: () => UfoneOther(),
        binding: UfoneBinding()),
    GetPage(
        name: _Paths.TelenorCall,
        page: () => TelenorCall(),
        binding: TelenorBinding()),
    GetPage(
        name: _Paths.TelenorSMS,
        page: () => TelenorSMS(),
        binding: TelenorBinding()),
    GetPage(
        name: _Paths.TelenorInternet,
        page: () => TelenorInternet(),
        binding: TelenorBinding()),
    GetPage(
        name: _Paths.TelenorOther,
        page: () => TelenorOther(),
        binding: TelenorBinding()),
    GetPage(
        name: _Paths.WaridCall,
        page: () => WaridCall(),
        binding: WaridBinding()),
    GetPage(
        name: _Paths.WaridSMS, page: () => WaridSMS(), binding: WaridBinding()),
    GetPage(
        name: _Paths.WaridInternet,
        page: () => WaridInternet(),
        binding: WaridBinding()),
    GetPage(
        name: _Paths.WaridOther,
        page: () => WaridOther(),
        binding: WaridBinding()),
    GetPage(
      name: _Paths.JazzViewMore,
      page: () => JazzViewMore(),
      // binding: WaridBinding()
    ),
    GetPage(
      name: _Paths.ZongViewMore,
      page: () => ZongViewMore(),
      // binding: WaridBinding()
    ),
    GetPage(
      name: _Paths.UfoneViewMore,
      page: () => UfoneViewMore(),
      // binding: WaridBinding()
    ),
    GetPage(
      name: _Paths.TelenorViewMore,
      page: () => TelenorViewMore(),
      // binding: WaridBinding()
    ),
    GetPage(
      name: _Paths.WaridViewMore,
      page: () => WaridViewMore(),
      // binding: WaridBinding()
    ),
    GetPage(
        name: _Paths.SIMCHECKERVIEW,
        page: () => SimCheckerView(),
        binding: SimCheckerBinding()),
  ];
}
