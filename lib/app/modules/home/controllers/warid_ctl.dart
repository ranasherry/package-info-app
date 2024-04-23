import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/mobile_packages_model.dart';

class WaridCTL extends GetxController {
  RxList<MobilePackages> waridPackageList = <MobilePackages>[].obs;
  RxList<MobilePackages> waridSMSList = <MobilePackages>[].obs;
  RxList<MobilePackages> waridInternetList = <MobilePackages>[].obs;
  RxList<MobilePackages> waridOther = <MobilePackages>[].obs;

  Rx<MobilePackages> currentPackage = MobilePackages(
          validity: "1 Day",
          rs: "17",
          onnet: "300",
          offnet: "0",
          sms: "300",
          internet: "20",
          type: PackageType.call,
          bundle: "Warid Day Bundle",
          activation: "*340#",
          deactivation: "*340*4#")
      .obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

// Jazz Call Package List

    waridPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "17",
        onnet: "300",
        offnet: "0",
        sms: "300",
        internet: "20",
        type: PackageType.call,
        bundle: "Warid Day Bundle",
        activation: "*340#",
        deactivation: "*340*4#"));

    waridPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "23",
        onnet: "1440",
        offnet: "0",
        sms: "50",
        internet: "200",
        type: PackageType.call,
        bundle: "Warid Super Bundle",
        activation: "*212#",
        deactivation: "*212*2#"));

    waridPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "35",
        onnet: "500",
        offnet: "5",
        sms: "500",
        internet: "500",
        type: PackageType.call,
        bundle: "Super Plus Bundle",
        activation: "*558#",
        deactivation: "*558*2#"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Warid Weekly Voice Offer",
        activation: "*211#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "50",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Warid Haftawar",
        activation: "*747#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "132",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "12000",
        type: PackageType.call,
        bundle: "Warid Work From Home",
        activation: "*117*14#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "150",
        onnet: "1000",
        offnet: "60",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Warid Weekly Hybrid",
        activation: "*407#",
        deactivation: "*407*2#"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "210",
        onnet: "1000",
        offnet: "90",
        sms: "1000",
        internet: "3000",
        type: PackageType.call,
        bundle: "Warid Weekly",
        activation: "*700#",
        deactivation: "*700*4#"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "274",
        onnet: "1500",
        offnet: "60",
        sms: "1500",
        internet: "6000",
        type: PackageType.call,
        bundle: "Warid Super Duper",
        activation: "*770#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "304",
        onnet: "5000",
        offnet: "100",
        sms: "5000",
        internet: "12000",
        type: PackageType.call,
        bundle: "Warid Weekly Super Plus",
        activation: "*505#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "347",
        onnet: "6000",
        offnet: "125",
        sms: "6000",
        internet: "30000",
        type: PackageType.call,
        bundle: "Warid Weekly Super Max",
        activation: "*506#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "149",
        onnet: "300",
        offnet: "40",
        sms: "2000",
        internet: "4000",
        type: PackageType.call,
        bundle: "Warid Mahana Bachat",
        activation: "*614#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "200",
        onnet: "300",
        offnet: "50",
        sms: "300",
        internet: "10000",
        type: PackageType.call,
        bundle: "Warid Monthly Social Plus",
        activation: "*617#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "454",
        onnet: "5000",
        offnet: "150",
        sms: "5000",
        internet: "10000",
        type: PackageType.call,
        bundle: "Warid Karachi Mahana Offer",
        activation: "*529#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "695",
        onnet: "3000",
        offnet: "150",
        sms: "3000",
        internet: "6000",
        type: PackageType.call,
        bundle: "Warid Monthly Hybrid",
        activation: "*430#",
        deactivation: "*430*3#"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "724",
        onnet: "2000",
        offnet: "150",
        sms: "2000",
        internet: "2000",
        type: PackageType.call,
        bundle: "Warid Super Duper Card",
        activation: "*601#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "400",
        offnet: "0",
        sms: "0",
        internet: "25000",
        type: PackageType.call,
        bundle: "Warid Monthly Premium",
        activation: "*2000#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "3000",
        offnet: "300",
        sms: "3000",
        internet: "12000",
        type: PackageType.call,
        bundle: "Warid Montly Syper Duper",
        activation: "*706#",
        deactivation: "-"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "955",
        onnet: "10000",
        offnet: "500",
        sms: "10000",
        internet: "25000",
        type: PackageType.call,
        bundle: "Warid Monthly Max",
        activation: "*708#",
        deactivation: "*708*4#"));

    waridPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1000",
        onnet: "5000",
        offnet: "300",
        sms: "5000",
        internet: "17000",
        type: PackageType.call,
        bundle: "Warid Monthly Super Duper Plus",
        activation: "*707#",
        deactivation: "*707*3#"));

    // Jazz SMS Offers

    waridSMSList.add(MobilePackages(
        validity: "1 Days",
        rs: "7",
        onnet: "0",
        offnet: "0",
        sms: "1800",
        internet: "10",
        type: PackageType.call,
        bundle: "Daily SMS",
        activation: "*700#",
        deactivation: "-"));

    waridSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "17",
        onnet: "300",
        offnet: "0",
        sms: "300",
        internet: "20",
        type: PackageType.call,
        bundle: "Warid Day Bundle",
        activation: "*340#",
        deactivation: "*340*4#"));

    waridSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "35",
        onnet: "500",
        offnet: "5",
        sms: "500",
        internet: "500",
        type: PackageType.call,
        bundle: "Super Plus Bundle",
        activation: "*558#",
        deactivation: "*558*2#"));

    waridSMSList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "50",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Warid Haftawar",
        activation: "*747#",
        deactivation: "-"));

    waridSMSList.add(MobilePackages(
        validity: "30 Days",
        rs: "149",
        onnet: "300",
        offnet: "40",
        sms: "2000",
        internet: "4000",
        type: PackageType.call,
        bundle: "Warid Mahana Bachat",
        activation: "*614#",
        deactivation: "-"));

    waridSMSList.add(MobilePackages(
        validity: "30 Days",
        rs: "695",
        onnet: "3000",
        offnet: "150",
        sms: "3000",
        internet: "6000",
        type: PackageType.call,
        bundle: "Warid Monthly Hybrid",
        activation: "*430#",
        deactivation: "*430*3#"));

    // Jazz Data Offers

    waridInternetList.add(MobilePackages(
        validity: "3 Days",
        rs: "46",
        onnet: "100",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Warid 3 Day Max Offer",
        activation: "*631#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "3 Days",
        rs: "35",
        onnet: "100",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Warid Give a Bundle",
        activation: "*919#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "347",
        onnet: "6000",
        offnet: "125",
        sms: "6000",
        internet: "30000",
        type: PackageType.data,
        bundle: "Warid Weekly Super Max",
        activation: "*506#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "195",
        onnet: "500",
        offnet: "25",
        sms: "500",
        internet: "8000",
        type: PackageType.data,
        bundle: "Warid Weekly Social Plus",
        activation: "*668#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "274",
        onnet: "1500",
        offnet: "60",
        sms: "1500",
        internet: "6000",
        type: PackageType.data,
        bundle: "Warid Super Duper",
        activation: "*770#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "210",
        onnet: "1000",
        offnet: "90",
        sms: "1000",
        internet: "3000",
        type: PackageType.data,
        bundle: "Warid Weekly",
        activation: "*700#",
        deactivation: "*700*4#"));

    waridInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "304",
        onnet: "5000",
        offnet: "100",
        sms: "5000",
        internet: "12000",
        type: PackageType.data,
        bundle: "Warid Weekly Super Plus",
        activation: "*505#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "132",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "12000",
        type: PackageType.data,
        bundle: "Warid Work From Home",
        activation: "*117*14#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "955",
        onnet: "10000",
        offnet: "500",
        sms: "10000",
        internet: "25000",
        type: PackageType.data,
        bundle: "Warid Monthly Max",
        activation: "*708#",
        deactivation: "*708*4#"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "1000",
        onnet: "5000",
        offnet: "300",
        sms: "5000",
        internet: "17000",
        type: PackageType.data,
        bundle: "Warid Monthly Super Duper Plus",
        activation: "*707#",
        deactivation: "*707*3#"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "3000",
        offnet: "300",
        sms: "3000",
        internet: "12000",
        type: PackageType.data,
        bundle: "Warid Montly Syper Duper",
        activation: "*706#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "780",
        onnet: "400",
        offnet: "0",
        sms: "0",
        internet: "25000",
        type: PackageType.data,
        bundle: "Warid Monthly Premium",
        activation: "*2000#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "695",
        onnet: "3000",
        offnet: "150",
        sms: "3000",
        internet: "6000",
        type: PackageType.data,
        bundle: "Warid Monthly Hybrid",
        activation: "*430#",
        deactivation: "*430*3#"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "454",
        onnet: "5000",
        offnet: "150",
        sms: "5000",
        internet: "10000",
        type: PackageType.data,
        bundle: "Warid Karachi Mahana Offer",
        activation: "*529#",
        deactivation: "-"));

    waridInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "454",
        onnet: "5000",
        offnet: "150",
        sms: "5000",
        internet: "10000",
        type: PackageType.data,
        bundle: "Warid Karachi Mahana Offer",
        activation: "*529#",
        deactivation: "-"));

    // Jazz Other Offers

    waridOther.add(MobilePackages(
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

    waridOther.add(MobilePackages(
        validity: "7 Days",
        rs: "60",
        onnet: "600",
        offnet: "30",
        sms: "600",
        internet: "6000",
        type: PackageType.other,
        bundle: "Warid Super Sim Offer",
        activation: "*476#",
        deactivation: "-"));

    waridOther.add(MobilePackages(
        validity: "60 Days",
        rs: "0.06",
        onnet: "3000",
        offnet: "0",
        sms: "3000",
        internet: "1500",
        type: PackageType.other,
        bundle: "Warid Sim Lagao Offer",
        activation: "*551#",
        deactivation: "-"));

    waridOther.add(MobilePackages(
        validity: "7 Days",
        rs: "2500",
        onnet: "1000",
        offnet: "50",
        sms: "4096",
        internet: "1500",
        type: PackageType.other,
        bundle: "Warid 4G Offer",
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
