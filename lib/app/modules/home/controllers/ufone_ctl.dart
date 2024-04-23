import 'package:all_network_packages/app/modules/data/mobile_packages_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class UfoneCTL extends GetxController {
  RxList<MobilePackages> UfonePackageList = <MobilePackages>[].obs;
  RxList<MobilePackages> UfoneSMSList = <MobilePackages>[].obs;
  RxList<MobilePackages> UfoneInternetList = <MobilePackages>[].obs;
  RxList<MobilePackages> UfoneOther = <MobilePackages>[].obs;

  Rx<MobilePackages> currentPackage = MobilePackages(
          validity: "1 Day",
          rs: "15.5",
          onnet: "Free",
          offnet: "0",
          sms: "0",
          internet: "0",
          type: PackageType.call,
          bundle: "Ufone Beyhisaab Offer",
          activation: "*5700#",
          deactivation: "-")
      .obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // Ufone Package List

    UfonePackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "17",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Ufone Beyhisaab Offer",
        activation: "*5700#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "17",
        onnet: "500",
        offnet: "0",
        sms: "0",
        internet: "500",
        type: PackageType.call,
        bundle: "Ufone Best Day Offer",
        activation: "*6060#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "21",
        onnet: "100",
        offnet: "0",
        sms: "0",
        internet: "10",
        type: PackageType.call,
        bundle: "Ufone Daily Pakistan Offer",
        activation: "*888#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "30",
        onnet: "200",
        offnet: "10",
        sms: "0",
        internet: "250",
        type: PackageType.call,
        bundle: "Ufone Upower Card",
        activation: "*121*1Card Number#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "52.17",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Ufone Talk-Time Offer",
        activation: "*6789#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "122",
        onnet: "700",
        offnet: "0",
        sms: "0",
        internet: "100",
        type: PackageType.call,
        bundle: "Ufone Weekly Pakistan Offer",
        activation: "*8888#",
        deactivation: "8880"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "25",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Ufone Upower Card ",
        activation: "*123*1*Card Number#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "130",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.call,
        bundle: "Ufone Best Weekly Offer",
        activation: "*7070#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "140",
        onnet: "100",
        offnet: "0",
        sms: "100",
        internet: "1000",
        type: PackageType.call,
        bundle: "Ufone Asli Chappar phaar Offer",
        activation: "*5050#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "170",
        onnet: "170",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Ufone Super Minutes",
        activation: "*210#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "250",
        onnet: "1000",
        offnet: "25",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Ufone Upower Card",
        activation: "*123*1*Card Number#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "299",
        onnet: "5000",
        offnet: "0",
        sms: "5000",
        internet: "40000",
        type: PackageType.call,
        bundle: "Ufone Sab Se Bari Offer",
        activation: "*7777#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "350",
        onnet: "5000",
        offnet: "200",
        sms: "5000",
        internet: "40000",
        type: PackageType.call,
        bundle: "Ufone Sab Se Bari Offer",
        activation: "*7777#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "460",
        onnet: "4000",
        offnet: "0",
        sms: "0",
        internet: "400",
        type: PackageType.call,
        bundle: "Ufone Monthly Pakistan Offer",
        activation: "*8888#",
        deactivation: "8880"));

    UfonePackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "699",
        onnet: "2000",
        offnet: "225",
        sms: "4200",
        internet: "3000",
        type: PackageType.call,
        bundle: "Ufone Super Card Plus",
        activation: "*250#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "749",
        onnet: "Free",
        offnet: "350",
        sms: "4500",
        internet: "14000",
        type: PackageType.call,
        bundle: "Ufone Super Card Max",
        activation: "*629#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1099",
        onnet: "Free",
        offnet: "600",
        sms: "Free",
        internet: "24000",
        type: PackageType.call,
        bundle: "Ufone Super Card Gold",
        activation: "*900#",
        deactivation: "-"));

    UfonePackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1999",
        onnet: "800",
        offnet: "10000",
        sms: "6000",
        internet: "30000",
        type: PackageType.call,
        bundle: "Ufone UFamily",
        activation: "*5555#",
        deactivation: "-"));

    // Ufone SMS List

    UfoneSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "4.77",
        onnet: "0",
        offnet: "0",
        sms: "1600",
        internet: "0",
        type: PackageType.sms,
        bundle: "Ufone Daily SMS Package",
        activation: "sub to 605",
        deactivation: "-"));

    UfoneSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "5.96",
        onnet: "0",
        offnet: "0",
        sms: "100",
        internet: "0",
        type: PackageType.sms,
        bundle: "Ufone International SMS Bucket",
        activation: "sub to 6055",
        deactivation: "-"));

    UfoneSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "6",
        onnet: "0",
        offnet: "0",
        sms: "10000",
        internet: "500",
        type: PackageType.sms,
        bundle: "Ufone Daily Chat Package",
        activation: "*3465#",
        deactivation: "-"));

    UfoneSMSList.add(MobilePackages(
        validity: "7 Days",
        rs: "11.95",
        onnet: "0",
        offnet: "0",
        sms: "1250",
        internet: "0",
        type: PackageType.sms,
        bundle: "Ufone Weekly SMS Bucket",
        activation: "sub to 608",
        deactivation: "-"));

    UfoneSMSList.add(MobilePackages(
        validity: "30 Days",
        rs: "95.6",
        onnet: "0",
        offnet: "0",
        sms: "21000",
        internet: "0",
        type: PackageType.sms,
        bundle: "Ufone Monthly SMS Package",
        activation: "sub to 607",
        deactivation: "-"));

    // Ufone Internet List

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "1.5",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "100",
        type: PackageType.data,
        bundle: "Ufone Daily WhatsApp Offer",
        activation: "*987#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "6",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "100",
        type: PackageType.data,
        bundle: "Ufone Social Daily Package",
        activation: "*4422#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "7",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "50",
        type: PackageType.data,
        bundle: "Ufone Special Daily 3G Package",
        activation: "*3461#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "7",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.data,
        bundle: "Ufone Best Morning Offer",
        activation: "*4200#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "12",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "500",
        type: PackageType.data,
        bundle: "Ufone Streaming Offer (1 hour)",
        activation: "*78#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "13",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Ufone Daily Off Peak Plus",
        activation: "*10#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "14",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "40",
        type: PackageType.data,
        bundle: "Ufone Daily Light Package",
        activation: "*2256#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "18",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "75",
        type: PackageType.data,
        bundle: "Ufone Daily Heavy 3G Package",
        activation: "*2258#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "20",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2000",
        type: PackageType.data,
        bundle: "Ufone Mega Internet",
        activation: "*550#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "70",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Ufone TikTok Offer",
        activation: "*2345#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "70",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2500",
        type: PackageType.data,
        bundle: "Ufone Weekly SnackVideo Offer",
        activation: "*265#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Day",
        rs: "90",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "25000",
        type: PackageType.data,
        bundle: "Ufone Internet Max Offer",
        activation: "*2570#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Ufone Youtube Offer",
        activation: "*5883#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "160",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Ufone Super Internet",
        activation: "*220#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "220",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "10000",
        type: PackageType.data,
        bundle: "Ufone Weekly Internet Plus",
        activation: "*260#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "250",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "16000",
        type: PackageType.data,
        bundle: "Ufone Weekly Heavy Internet",
        activation: "*270#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "60",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "6000",
        type: PackageType.data,
        bundle: "Ufone Monthly WhatsApp Offer",
        activation: "*987#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "75",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Ufone Social Monthly Package",
        activation: "*5858#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "100",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "6000",
        type: PackageType.data,
        bundle: "Ufone Monthly FaceBook Offer",
        activation: "*987#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "120",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1536",
        type: PackageType.data,
        bundle: "Ufone PrimePlay 1000",
        activation: "*323#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "250",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Ufone Monthly Lite CashBack Offer",
        activation: "*3#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "275",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "4096",
        type: PackageType.data,
        bundle: "Ufone PrimePlay 3000",
        activation: "*434#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "390",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Ufone Monthly Light",
        activation: "*7807#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "549",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "18000",
        type: PackageType.data,
        bundle: "Ufone Super Internet Plus",
        activation: "*290#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "550",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "8192",
        type: PackageType.data,
        bundle: "Ufone PrimePlay 6000",
        activation: "*656#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "825",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "13312",
        type: PackageType.data,
        bundle: "Ufone PrimePlay 10000",
        activation: "*989#",
        deactivation: "-"));

    UfoneInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "730",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "30000",
        type: PackageType.data,
        bundle: "Ufone Monthly Heavy Internet",
        activation: "*310#",
        deactivation: "-"));

    // Ufone Other

    UfoneOther.add(MobilePackages(
        validity: "1 Hour",
        rs: "8.2",
        onnet: "60",
        offnet: "0",
        sms: "60",
        internet: "60",
        type: PackageType.other,
        bundle: "Ufone Power Hour",
        activation: "*99#",
        deactivation: "-"));

    UfoneOther.add(MobilePackages(
        validity: "2 Hours",
        rs: "7.5",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.other,
        bundle: "Nayi Best Call Offer",
        activation: "*343#",
        deactivation: "-"));

    UfoneOther.add(MobilePackages(
        validity: "7 Days",
        rs: "0",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.other,
        bundle: "Nayi Sim Offer",
        activation: "-",
        deactivation: "-"));

    UfoneOther.add(MobilePackages(
        validity: "30 Days",
        rs: "0",
        onnet: "6000",
        offnet: "0",
        sms: "6000",
        internet: "6000",
        type: PackageType.other,
        bundle: "Ufone Sim Lagao Offer",
        activation: "*5000#",
        deactivation: "-"));

    UfoneOther.add(MobilePackages(
        validity: "30 Days",
        rs: "0",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "free",
        type: PackageType.other,
        bundle: "Ufone Free WhatsApp Offer",
        activation: "*987#",
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
