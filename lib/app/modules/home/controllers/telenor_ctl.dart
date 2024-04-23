import 'package:all_network_packages/app/modules/data/mobile_packages_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TelenorCTL extends GetxController {
  RxList<MobilePackages> TelenorPackages = <MobilePackages>[].obs;
  RxList<MobilePackages> TelenorSMSPackage = <MobilePackages>[].obs;
  RxList<MobilePackages> TelenorInternetList = <MobilePackages>[].obs;
  RxList<MobilePackages> TelenorOther = <MobilePackages>[].obs;

  Rx<MobilePackages> currentPackage = MobilePackages(
          validity: "2 Hours",
          rs: "6",
          onnet: "Free",
          offnet: "0",
          sms: "0",
          internet: "250",
          type: PackageType.call,
          bundle: "Telenor Good Time Offer",
          activation: "*345*20#",
          deactivation: "-")
      .obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // Telenor Call packages

    TelenorPackages.add(MobilePackages(
        validity: "1 Day",
        rs: "6",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "250",
        type: PackageType.call,
        bundle: "Telenor Good Time Offer",
        activation: "*345*20#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "1 Day",
        rs: "0.80",
        onnet: "20",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Telenor Superload Offer",
        activation: "*5*100#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "1 Day",
        rs: "13",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "50",
        type: PackageType.call,
        bundle: "Telenor Full Day Package",
        activation: "*5*250#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "5",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Telenor Free First Call Offer",
        activation: "*888#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "25",
        onnet: "140",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Telenor Weekly Voice Lite",
        activation: "*345*54#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "55",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Telenor Haftawaar Offpeak Offer",
        activation: "*978#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "75",
        onnet: "200",
        offnet: "20",
        sms: "200",
        internet: "100",
        type: PackageType.call,
        bundle: "Telenor Sahulat Mini Offer",
        activation: "*170#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "70",
        type: PackageType.call,
        bundle: "Telenor Haftawar Chappar phaar Offer",
        activation: "*5*700#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "70",
        sms: "700",
        internet: "100",
        type: PackageType.call,
        bundle: "Telenor Haftawar Sahulat package",
        activation: "*5*7#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "130",
        onnet: "1000",
        offnet: "50",
        sms: "0",
        internet: "1500",
        type: PackageType.call,
        bundle: "Telenor Weekly Internet All In One",
        activation: "*345*75#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "135",
        onnet: "1000",
        offnet: "50",
        sms: "0",
        internet: "1500",
        type: PackageType.call,
        bundle: "Telenor Weekly Easy Card 160",
        activation: "*963#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "157",
        onnet: "1500",
        offnet: "80",
        sms: "1500",
        internet: "3000",
        type: PackageType.call,
        bundle: "Telenor Weekly Easy Card 180",
        activation: "*175#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "190",
        onnet: "150",
        offnet: "0",
        sms: "0",
        internet: "3500",
        type: PackageType.call,
        bundle: "Telenor djuice Weekly Offer",
        activation: "*345*88#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "235",
        onnet: "2000",
        offnet: "85",
        sms: "2000",
        internet: "12000",
        type: PackageType.call,
        bundle: "Telenor Weekly Easy Card Mega",
        activation: "*001#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "260",
        onnet: "5000",
        offnet: "100",
        sms: "5000",
        internet: "24000",
        type: PackageType.call,
        bundle: "Telenor Mega Plus Weekly Easy Card",
        activation: "*003#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "7 Days",
        rs: "300",
        onnet: "7500",
        offnet: "200",
        sms: "7500",
        internet: "40000",
        type: PackageType.call,
        bundle: "Telenor Weekly Easy Card Extreme",
        activation: "*345*67#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "10",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Telenor Monthly First Free Call Offer",
        activation: "*326#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "80",
        onnet: "300",
        offnet: "10",
        sms: "0",
        internet: "3000",
        type: PackageType.call,
        bundle: "Telenor Mahana Budget Offer",
        activation: "*514#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "130",
        onnet: "250",
        offnet: "25",
        sms: "0",
        internet: "100",
        type: PackageType.call,
        bundle: "Telenor Social All-in-One Package",
        activation: "*572#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "418",
        onnet: "3000",
        offnet: "0",
        sms: "3000",
        internet: "300",
        type: PackageType.call,
        bundle: "Telenor Mahana Rakhwala Package",
        activation: "*345*30#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "478",
        onnet: "750",
        offnet: "70",
        sms: "500",
        internet: "3000",
        type: PackageType.call,
        bundle: "Telenor Monthly Easy Card 550",
        activation: "*350#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "565",
        onnet: "3000",
        offnet: "250",
        sms: "3000",
        internet: "8000",
        type: PackageType.call,
        bundle: "Telenor Monthly Easy Card 700",
        activation: "*530#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "600",
        onnet: "500",
        offnet: "100",
        sms: "0",
        internet: "40000",
        type: PackageType.call,
        bundle: "Telenor Monthly Super Plus",
        activation: "*979#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "720",
        onnet: "5000",
        offnet: "400",
        sms: "5000",
        internet: "12000",
        type: PackageType.call,
        bundle: "Telenor Monthly Easy Card 850",
        activation: "*80#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "900",
        onnet: "7000",
        offnet: "600",
        sms: "10000",
        internet: "18000",
        type: PackageType.call,
        bundle: "Telenor Easy Card 1000",
        activation: "*248#",
        deactivation: "-"));

    TelenorPackages.add(MobilePackages(
        validity: "30 Days",
        rs: "950",
        onnet: "7500",
        offnet: "600",
        sms: "0",
        internet: "30000",
        type: PackageType.call,
        bundle: "Telenor Monthly Extreme Offer",
        activation: "*708#",
        deactivation: "-"));

    // Telenor SMS Packages

    TelenorSMSPackage.add(MobilePackages(
        validity: "1 Day",
        rs: "4.78",
        onnet: "0",
        offnet: "0",
        sms: "240",
        internet: "0",
        type: PackageType.sms,
        bundle: "Telenor Daily SMS Bundle",
        activation: "345*116#",
        deactivation: "*2*2*1#"));

    TelenorSMSPackage.add(MobilePackages(
        validity: "7 Days",
        rs: "17",
        onnet: "0",
        offnet: "0",
        sms: "2000",
        internet: "0",
        type: PackageType.sms,
        bundle: "Telenor Weekly SMS Bundle",
        activation: "*345*117#",
        deactivation: "-"));

    TelenorSMSPackage.add(MobilePackages(
        validity: "30 Days",
        rs: "47.80",
        onnet: "0",
        offnet: "0",
        sms: "10000",
        internet: "300",
        type: PackageType.sms,
        bundle: "Telenor djuice Monthly SMS Bundle",
        activation: "*2*2*3#",
        deactivation: "-"));

    TelenorSMSPackage.add(MobilePackages(
        validity: "30 Days",
        rs: "60",
        onnet: "0",
        offnet: "0",
        sms: "10000",
        internet: "1000",
        type: PackageType.sms,
        bundle: "Telenor Monthly SMS Bundle",
        activation: "*345*363#",
        deactivation: "-"));

    TelenorSMSPackage.add(MobilePackages(
        validity: "30 Days",
        rs: "85",
        onnet: "0",
        offnet: "0",
        sms: "10000",
        internet: "6000",
        type: PackageType.sms,
        bundle: "Telenor Monthly Social Pack Plus",
        activation: "*660#",
        deactivation: "-"));

    // Telenor Internet Packages

    TelenorInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "0",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Telenor Facebook Flex",
        activation: "-",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "3",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "70",
        type: PackageType.data,
        bundle: "Telenor Daily Social Pack",
        activation: "*311#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "8",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "500",
        type: PackageType.data,
        bundle: "Telenor Daily Youtube Package",
        activation: "*60#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "15",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "250",
        type: PackageType.data,
        bundle: "Telenor 4G Daily Package",
        activation: "*13#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "15",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Telenor Daily Offpeak Offer",
        activation: "*10#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "18",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Telenor Raat Din Offer",
        activation: "*150#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "10",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Telenor Weekly Music Package",
        activation: "*345*13#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "30",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Telenor Weekly Sports Package",
        activation: "*345*74#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "55",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "30000",
        type: PackageType.data,
        bundle: "Telenor 4G Weekly Internet Max",
        activation: "*19#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "60",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.data,
        bundle: "Telenor Weekly 6 to 6 Package",
        activation: "*71#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "80",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "3000",
        type: PackageType.data,
        bundle: "Telenor Weekly Zoom Package",
        activation: "*345*56#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "86",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Telenor Weekly YouTube Package",
        activation: "*220#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.data,
        bundle: "Telenor 4G Weekly Super Offer",
        activation: "*288#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "190",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "8000",
        type: PackageType.data,
        bundle: "Telenor 4G Weekly Ultra",
        activation: "*336#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "240",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "20000",
        type: PackageType.data,
        bundle: "Telenor 4G Weekly Ultra Plus",
        activation: "*225#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "0",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.data,
        bundle: "Telenor Free Snapchat Package",
        activation: "*915#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "1",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.data,
        bundle: "Telenor Monthly WhatsApp Package",
        activation: "*247#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "50",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.data,
        bundle: "Telenor Monthly Entertainment Offer",
        activation: "*121#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "52",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "100",
        type: PackageType.data,
        bundle: "Telenor Monthly Social Pack",
        activation: "*911#",
        deactivation: "-"));

    TelenorInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "180",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "100000",
        type: PackageType.data,
        bundle: "Telenor Mega Monthly Offer",
        activation: "*29#",
        deactivation: "-"));

    // Telenor Other

    TelenorOther.add(MobilePackages(
        validity: "3 Days",
        rs: "40",
        onnet: "300",
        offnet: "0",
        sms: "300",
        internet: "100",
        type: PackageType.other,
        bundle: "Telenor Super 3 Package",
        activation: "*5*300#",
        deactivation: "-"));

    TelenorOther.add(MobilePackages(
        validity: "3 Days",
        rs: "50",
        onnet: "600",
        offnet: "0",
        sms: "300",
        internet: "50",
        type: PackageType.other,
        bundle: "Telenor 3/3 Offer",
        activation: "*345*243#",
        deactivation: "-"));

    TelenorOther.add(MobilePackages(
        validity: "30 Days",
        rs: "0",
        onnet: "3000",
        offnet: "0",
        sms: "0",
        internet: "10000",
        type: PackageType.other,
        bundle: "Telenor Sim Lagao Offer",
        activation: "Free to 2222",
        deactivation: "-"));

    TelenorOther.add(MobilePackages(
        validity: "30 Days",
        rs: "750",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "15000",
        type: PackageType.other,
        bundle: "Telenor Monthly Starter (Internet Sim)",
        activation: "*345*2002#",
        deactivation: "-"));

    TelenorOther.add(MobilePackages(
        validity: "3 Month",
        rs: "4000",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "108000",
        type: PackageType.other,
        bundle: "Telenor 4G bundle(Device only)",
        activation: "*345*1005#",
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
