import 'package:all_network_packages/app/modules/data/mobile_packages_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class JazzCTL extends GetxController {
  RxList<MobilePackages> jazzPackageList = <MobilePackages>[].obs;
  RxList<MobilePackages> jazzSMSList = <MobilePackages>[].obs;
  RxList<MobilePackages> jazzInternetList = <MobilePackages>[].obs;
  RxList<MobilePackages> jazzOther = <MobilePackages>[].obs;

  Rx<MobilePackages> currentPackage = MobilePackages(
          validity: "1 Day",
          rs: "17",
          onnet: "300",
          offnet: "0",
          sms: "300",
          internet: "20",
          type: PackageType.call,
          bundle: "Jazz Day Bundle",
          activation: "*340#",
          deactivation: "*340*4#")
      .obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

// Jazz Call Package List

    jazzPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "9.56",
        onnet: "Free",
        offnet: "0",
        sms: "Free",
        internet: "0",
        type: PackageType.call,
        bundle: "Jazz Super F&F",
        activation: "*141*3#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "30",
        onnet: "1440",
        offnet: "0",
        sms: "50",
        internet: "200",
        type: PackageType.call,
        bundle: "Jazz Daily Super",
        activation: "*212#",
        deactivation: "*212*4#"));

    jazzPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "30",
        onnet: "Free",
        offnet: "0",
        sms: "50",
        internet: "200",
        type: PackageType.call,
        bundle: "Jazz Super Bundle",
        activation: "*212#",
        deactivation: "*212*4#"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "78",
        onnet: "600",
        offnet: "30",
        sms: "600",
        internet: "6000",
        type: PackageType.call,
        bundle: "Jazz Super Sim Offer",
        activation: "*476#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "139",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Jazz Weekly Voice Offer",
        activation: "*211#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "145",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "12000",
        type: PackageType.call,
        bundle: "Jazz Super Woman Bundle",
        activation: "*117*14#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "150",
        onnet: "1000",
        offnet: "50",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Jazz Haftawaar All Rounder",
        activation: "*747#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "160",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "12000",
        type: PackageType.call,
        bundle: "Work From Home Bundle",
        activation: "*117*14#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "165",
        onnet: "1000",
        offnet: "60",
        sms: "1000",
        internet: "100",
        type: PackageType.call,
        bundle: "Jazz Weekly Gupshup",
        activation: "*211#",
        deactivation: "*211*2"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "304",
        onnet: "5000",
        offnet: "100",
        sms: "5000",
        internet: "12000",
        type: PackageType.call,
        bundle: "Jazz Weekly Super Plus",
        activation: "*505#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "347",
        onnet: "6000",
        offnet: "125",
        sms: "6000",
        internet: "30000",
        type: PackageType.call,
        bundle: "Jazz Weekly Super Max",
        activation: "*506#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "149",
        onnet: "300",
        offnet: "40",
        sms: "2000",
        internet: "4000",
        type: PackageType.call,
        bundle: "Jazz Mahana Bachat",
        activation: "*614#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "200",
        onnet: "300",
        offnet: "50",
        sms: "300",
        internet: "10000",
        type: PackageType.call,
        bundle: "Jazz Monthly Social Plus",
        activation: "*617#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "454",
        onnet: "5000",
        offnet: "150",
        sms: "5000",
        internet: "10000",
        type: PackageType.call,
        bundle: "Jazz Karachi Mahana Offer",
        activation: "*529#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "695",
        onnet: "3000",
        offnet: "150",
        sms: "3000",
        internet: "6000",
        type: PackageType.call,
        bundle: "Jazz Monthly Hybrid",
        activation: "*430#",
        deactivation: "*430*3#"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "724",
        onnet: "2000",
        offnet: "150",
        sms: "2000",
        internet: "2000",
        type: PackageType.call,
        bundle: "Jazz Super Duper Card",
        activation: "*601#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "400",
        offnet: "0",
        sms: "0",
        internet: "25000",
        type: PackageType.call,
        bundle: "Jazz Monthly Premium",
        activation: "*2000#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "3000",
        offnet: "300",
        sms: "3000",
        internet: "12000",
        type: PackageType.call,
        bundle: "Jazz Montly Syper Duper",
        activation: "*706#",
        deactivation: "-"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "955",
        onnet: "10000",
        offnet: "500",
        sms: "10000",
        internet: "25000",
        type: PackageType.call,
        bundle: "Jazz Monthly Max",
        activation: "*708#",
        deactivation: "*708*4#"));

    jazzPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1000",
        onnet: "5000",
        offnet: "300",
        sms: "5000",
        internet: "17000",
        type: PackageType.call,
        bundle: "Jazz Monthly Super Duper Plus",
        activation: "*707#",
        deactivation: "*707*3#"));

    // Jazz SMS Offers

    jazzSMSList.add(MobilePackages(
        validity: "1 Days",
        rs: "9.56",
        onnet: "Free",
        offnet: "0",
        sms: "Free",
        internet: "0",
        type: PackageType.call,
        bundle: "Jazz Super F&F",
        activation: "*141*3#",
        deactivation: "-"));

    jazzSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "9.6",
        onnet: "0",
        offnet: "0",
        sms: "1800",
        internet: "10",
        type: PackageType.call,
        bundle: "Jazz Daily SMS & WhatsApp",
        activation: "*334#",
        deactivation: "*334*4#"));

    jazzSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "30",
        onnet: "Free",
        offnet: "0",
        sms: "50",
        internet: "200",
        type: PackageType.call,
        bundle: "Jazz Super Bundle",
        activation: "*212#",
        deactivation: "*212*4#"));

    jazzSMSList.add(MobilePackages(
        validity: "7 Days",
        rs: "30",
        onnet: "1000",
        offnet: "50",
        sms: "1500",
        internet: "25",
        type: PackageType.call,
        bundle: "Jazz Weekly SMS",
        activation: "*101*1*07#",
        deactivation: "*101*4*07#"));

    jazzSMSList.add(MobilePackages(
        validity: "30 Days",
        rs: "250",
        onnet: "300",
        offnet: "50",
        sms: "1000",
        internet: "6000",
        type: PackageType.call,
        bundle: "Jazz Mahana Bachat",
        activation: "*614#",
        deactivation: "-"));

    jazzSMSList.add(MobilePackages(
        validity: "30 Days",
        rs: "695",
        onnet: "3000",
        offnet: "150",
        sms: "3000",
        internet: "6000",
        type: PackageType.call,
        bundle: "Jazz Monthly Hybrid",
        activation: "*430#",
        deactivation: "*430*3#"));

    // Jazz Data Offers

    jazzInternetList.add(MobilePackages(
        validity: "3 Days",
        rs: "46",
        onnet: "1440",
        offnet: "0",
        sms: "50",
        internet: "200",
        type: PackageType.data,
        bundle: "Jazz Daily Super",
        activation: "*212#",
        deactivation: "*212*4#"));

    jazzInternetList.add(MobilePackages(
        validity: "3 Days",
        rs: "35",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.data,
        bundle: "Jazz Daily Extreme",
        activation: "*757#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "145",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "12000",
        type: PackageType.data,
        bundle: "Jazz Super women bundle",
        activation: "*117*14#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "195",
        onnet: "500",
        offnet: "25",
        sms: "500",
        internet: "8000",
        type: PackageType.data,
        bundle: "Jazz Weekly Social Plus",
        activation: "*668#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "274",
        onnet: "1500",
        offnet: "60",
        sms: "1500",
        internet: "6000",
        type: PackageType.data,
        bundle: "Jazz Super Duper",
        activation: "*770#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "210",
        onnet: "1000",
        offnet: "90",
        sms: "1000",
        internet: "3000",
        type: PackageType.data,
        bundle: "Jazz Weekly",
        activation: "*700#",
        deactivation: "*700*4#"));

    jazzInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "304",
        onnet: "5000",
        offnet: "100",
        sms: "5000",
        internet: "12000",
        type: PackageType.data,
        bundle: "Jazz Weekly Super Plus",
        activation: "*505#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "132",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "12000",
        type: PackageType.data,
        bundle: "Jazz Work From Home",
        activation: "*117*14#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "275",
        onnet: "300",
        offnet: "50",
        sms: "300",
        internet: "10000",
        type: PackageType.data,
        bundle: "Jazz Monthly social",
        activation: "*617#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "3000",
        offnet: "300",
        sms: "3000",
        internet: "12000",
        type: PackageType.data,
        bundle: "Jazz Montly Syper Duper",
        activation: "*706#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "1000",
        onnet: "5000",
        offnet: "300",
        sms: "5000",
        internet: "17000",
        type: PackageType.data,
        bundle: "Jazz Monthly Super Duper Plus",
        activation: "*707#",
        deactivation: "*707*3#"));

    jazzInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "400",
        offnet: "0",
        sms: "0",
        internet: "25000",
        type: PackageType.data,
        bundle: "Jazz Monthly Premium",
        activation: "*2000#",
        deactivation: "-"));

    jazzInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "695",
        onnet: "3000",
        offnet: "150",
        sms: "3000",
        internet: "6000",
        type: PackageType.data,
        bundle: "Jazz Monthly Hybrid",
        activation: "*430#",
        deactivation: "*430*3#"));

    jazzInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "454",
        onnet: "5000",
        offnet: "150",
        sms: "5000",
        internet: "10000",
        type: PackageType.data,
        bundle: "Jazz Karachi Mahana Offer",
        activation: "*529#",
        deactivation: "-"));

    // Jazz Other Offers

    jazzOther.add(MobilePackages(
        validity: "7 Days",
        rs: "0",
        onnet: "1000",
        offnet: "0",
        sms: "1000",
        internet: "1000",
        type: PackageType.other,
        bundle: "New Sim Offer",
        activation: "*191#",
        deactivation: "-"));

    jazzOther.add(MobilePackages(
        validity: "7 Days",
        rs: "60",
        onnet: "600",
        offnet: "30",
        sms: "600",
        internet: "6000",
        type: PackageType.other,
        bundle: "Jazz Super Sim Offer",
        activation: "*476#",
        deactivation: "-"));

    jazzOther.add(MobilePackages(
        validity: "60 Days",
        rs: "0.06",
        onnet: "3000",
        offnet: "0",
        sms: "3000",
        internet: "1500",
        type: PackageType.other,
        bundle: "Jazz Sim Lagao Offer",
        activation: "*551#",
        deactivation: "-"));

    jazzOther.add(MobilePackages(
        validity: "7 Days",
        rs: "2500",
        onnet: "1000",
        offnet: "50",
        sms: "4096",
        internet: "1500",
        type: PackageType.other,
        bundle: "Jazz 4G Offer",
        activation: "*443*30#",
        deactivation: "-"));
  }

  packageActivation() async {
    var url = Uri.parse("tel: ${currentPackage.value.activation}");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
