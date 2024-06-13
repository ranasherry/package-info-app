import 'package:all_network_packages/app/modules/data/mobile_packages_model.dart';
import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ZongCTL extends GetxController {
  RxList<MobilePackages> ZongPackageList = <MobilePackages>[].obs;
  RxList<MobilePackages> ZongSMSList = <MobilePackages>[].obs;
  RxList<MobilePackages> ZongInternetList = <MobilePackages>[].obs;
  RxList<MobilePackages> ZongOther = <MobilePackages>[].obs;

  Rx<MobilePackages> currentPackage = MobilePackages(
          validity: "1 Day",
          rs: "5",
          onnet: "75",
          offnet: "0",
          sms: "100",
          internet: "30",
          type: PackageType.call,
          bundle: "Zong Full Gup Package",
          activation: "*118*1#",
          deactivation: "unsub to 1181")
      .obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //Zong Call Package List

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "5",
        onnet: "75",
        offnet: "0",
        sms: "100",
        internet: "30",
        type: PackageType.call,
        bundle: "Zong Full Gup Package",
        activation: "*118*1#",
        deactivation: "unsub to 1181"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "5",
        onnet: "20",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Zong Daily Voice Offer",
        activation: "*45#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "8",
        onnet: "Free",
        offnet: "0",
        sms: "500",
        internet: "0",
        type: PackageType.call,
        bundle: "Zong Sixer Plus Package",
        activation: "*666#",
        deactivation: "unsub to 666111"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "10",
        onnet: "Free",
        offnet: "0",
        sms: "0",
        internet: "0",
        type: PackageType.call,
        bundle: "Zong Non Stop Package",
        activation: "*777#",
        deactivation: "unsub to 7141"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "12",
        onnet: "120",
        offnet: "0",
        sms: "120",
        internet: "50",
        type: PackageType.call,
        bundle: "Zong Flutter Package",
        activation: "*369#",
        deactivation: "unsub to 369"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "12",
        onnet: "10000",
        offnet: "0",
        sms: "500",
        internet: "40",
        type: PackageType.call,
        bundle: "Zong Perfect Package",
        activation: "*118*2#",
        deactivation: "unsub to 7171"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "13",
        onnet: "150",
        offnet: "150",
        sms: "0",
        internet: "50",
        type: PackageType.call,
        bundle: "Zong Hello 1 Din",
        activation: "*2200*1#",
        deactivation: "unsub to 4952"));

    ZongPackageList.add(MobilePackages(
        validity: "1 Day",
        rs: "17",
        onnet: "Free",
        offnet: "0",
        sms: "800",
        internet: "50",
        type: PackageType.call,
        bundle: "Zong Shaandaar Daily Package",
        activation: "*999#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "0",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.call,
        bundle: "Zong Classified Pack",
        activation: "*6464#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "80",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Sehwan",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "90",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Sanghar",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "90",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Farooqabad",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "90",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Hasilpur",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Qamber",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Thul",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "500",
        offnet: "40",
        sms: "500",
        internet: "500",
        type: PackageType.call,
        bundle: "Zong Shandaar Weekly Package",
        activation: "*7#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "40",
        sms: "1000",
        internet: "5000",
        type: PackageType.call,
        bundle: "Lahore Super Offer",
        activation: "*7#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "500",
        offnet: "40",
        sms: "500",
        internet: "500",
        type: PackageType.call,
        bundle: "Zong Shandaar HaftawarOffer",
        activation: "*7#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "10000",
        type: PackageType.call,
        bundle: "Zong Stay At Home Bundle",
        activation: "*3434#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "150",
        onnet: "2000",
        offnet: "60",
        sms: "2000",
        internet: "8000",
        type: PackageType.call,
        bundle: "Zong Apna Shehr Plus Chiniot",
        activation: "*4466#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "160",
        onnet: "1000",
        offnet: "100",
        sms: "1000",
        internet: "3000",
        type: PackageType.call,
        bundle: "Malakand Offer",
        activation: "*595#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "290",
        onnet: "Free",
        offnet: "60",
        sms: "Free",
        internet: "8000",
        type: PackageType.call,
        bundle: "Zong Super Weekly Plus",
        activation: "*20#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "7 Days",
        rs: "385",
        onnet: "Free",
        offnet: "180",
        sms: "Free",
        internet: "30000",
        type: PackageType.call,
        bundle: "Zong Super Weekly Premium",
        activation: "*225#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "300",
        onnet: "1000",
        offnet: "100",
        sms: "1000",
        internet: "1000",
        type: PackageType.call,
        bundle: "Zong Shandaar Monthly Offer",
        activation: "*1000#",
        deactivation: "unsub to 7091"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "575",
        onnet: "3000",
        offnet: "400",
        sms: "3000",
        internet: "4000",
        type: PackageType.call,
        bundle: "Mahana Punjab Offer",
        activation: "*676#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "699",
        onnet: "Free",
        offnet: "250",
        sms: "Free",
        internet: "10000",
        type: PackageType.call,
        bundle: "Zong Monthly Super Card",
        activation: "*50#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "999",
        onnet: "5000",
        offnet: "350",
        sms: "5000",
        internet: "20000",
        type: PackageType.call,
        bundle: "Zong Supreme Offer",
        activation: "*3030#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1000",
        onnet: "2000",
        offnet: "150",
        sms: "1500",
        internet: "5000",
        type: PackageType.call,
        bundle: "Zong Monthly Power Pack",
        activation: "*1313#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1249",
        onnet: "10000",
        offnet: "600",
        sms: "10000",
        internet: "40000",
        type: PackageType.call,
        bundle: "Zong Monthly Pro",
        activation: "*1500#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "1732",
        onnet: "10000",
        offnet: "600",
        sms: "10000",
        internet: "10000",
        type: PackageType.call,
        bundle: "Zong Supreme Plus Offer",
        activation: "*6464*4#",
        deactivation: "-"));

    ZongPackageList.add(MobilePackages(
        validity: "30 Days",
        rs: "2000",
        onnet: "15000",
        offnet: "600",
        sms: "15000",
        internet: "40000",
        type: PackageType.call,
        bundle: "Family Bundle",
        activation: "*505#",
        deactivation: "-"));

    //Zong SMS List

    ZongSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "4",
        onnet: "0",
        offnet: "0",
        sms: "500",
        internet: "1",
        type: PackageType.sms,
        bundle: "Zong Zulu SMS Bundle",
        activation: "*704#",
        deactivation: "unsub to 704"));

    ZongSMSList.add(MobilePackages(
        validity: "1 Day",
        rs: "7",
        onnet: "0",
        offnet: "0",
        sms: "500",
        internet: "30",
        type: PackageType.sms,
        bundle: "Zong SMS + WhatsApp Bundle",
        activation: "*700#",
        deactivation: "unsub to 700"));

    ZongSMSList.add(MobilePackages(
        validity: "7 Days",
        rs: "32",
        onnet: "0",
        offnet: "0",
        sms: "1300",
        internet: "200",
        type: PackageType.sms,
        bundle: "Zong Weekly SMS Bundle",
        activation: "*702#",
        deactivation: "unsub to 700"));

    ZongSMSList.add(MobilePackages(
        validity: "7 Days",
        rs: "150",
        onnet: "700",
        offnet: "40",
        sms: "700",
        internet: "700",
        type: PackageType.sms,
        bundle: "All In One Week",
        activation: "*6464#",
        deactivation: "-"));

    ZongSMSList.add(MobilePackages(
        validity: "30 Days",
        rs: "90",
        onnet: "0",
        offnet: "0",
        sms: "Free",
        internet: "0",
        type: PackageType.sms,
        bundle: "SMS Monthly Offer",
        activation: "*567#",
        deactivation: "-"));

    //Zong Internet List

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "0",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "Free",
        type: PackageType.data,
        bundle: "Zong Facebook Package",
        activation: "-",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "5",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Zong Daily FaceBook Offer",
        activation: "*32#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "5",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "50",
        type: PackageType.data,
        bundle: "Zong Classified Pack",
        activation: "*6464#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "12",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1000",
        type: PackageType.data,
        bundle: "Zong Ramzan Exclusive Daytime",
        activation: "dto to 6464",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "15",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "150",
        type: PackageType.data,
        bundle: "Zong WhatsApp Only",
        activation: "*4#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "23",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "2500",
        type: PackageType.data,
        bundle: "Zong Good Night Package",
        activation: "gno to 6464",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "23",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Zong Daily Social",
        activation: "*386#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "23",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "1500",
        type: PackageType.data,
        bundle: "Zong Daytime Offer",
        activation: "*47#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "1 Day",
        rs: "49",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "500",
        type: PackageType.data,
        bundle: "Zong Daily Data",
        activation: "*5#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "80",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Apna Shehr Sehwan",
        activation: "*4466#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "90",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Apna Shehr Sanghar",
        activation: "*4466#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "90",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Apna Shehr Farooqabad",
        activation: "*4466#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "90",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Apna Shehr Hasilpur",
        activation: "*4466#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "8000",
        type: PackageType.data,
        bundle: "Zong Weekly Youtube Offer",
        activation: "*570#",
        deactivation: "unsub to 916"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Apna Shehr Qambar",
        activation: "*4466#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "100",
        onnet: "300",
        offnet: "30",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Apna Shehr Thul",
        activation: "*4466#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "110",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "100000",
        type: PackageType.data,
        bundle: "Zong Mega Data Offer",
        activation: "*808#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "120",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "10000",
        type: PackageType.data,
        bundle: "Zong Stay At Home Bundle",
        activation: "*3434#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "150",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "8000",
        type: PackageType.data,
        bundle: "Zong Weekly Video",
        activation: "*570#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "7 Days",
        rs: "200",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.data,
        bundle: "Zong Super Weekly Offer",
        activation: "*570#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "30",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "5000",
        type: PackageType.data,
        bundle: "Zong Monthly WhatsApp",
        activation: "*247#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "70",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "6000",
        type: PackageType.data,
        bundle: "Zong Monthly Facebook Offer",
        activation: "*250#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "130",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "6000",
        type: PackageType.data,
        bundle: "Zong Monthly Social Mini",
        activation: "*250#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "575",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "20000",
        type: PackageType.data,
        bundle: "Zong Monthly 20GB",
        activation: "*3#",
        deactivation: "-"));

    ZongInternetList.add(MobilePackages(
        validity: "30 Days",
        rs: "2000",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "60000",
        type: PackageType.data,
        bundle: "Zong Internet SIM Monthly 60GB",
        activation: "*6666#",
        deactivation: "-"));

    //Zong Other List

    ZongOther.add(MobilePackages(
        validity: "7 Days",
        rs: "0",
        onnet: "1000",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.other,
        bundle: "Zong New SIM Offer",
        activation: "*10#",
        deactivation: "-"));

    ZongOther.add(MobilePackages(
        validity: "7 Days",
        rs: "0",
        onnet: "400",
        offnet: "0",
        sms: "0",
        internet: "4000",
        type: PackageType.other,
        bundle: "Zong 4G SIM Upgraded Offer",
        activation: "*44#",
        deactivation: "-"));

    ZongOther.add(MobilePackages(
        validity: "7 Days",
        rs: "70",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "3000",
        type: PackageType.other,
        bundle: "Zong Weekly TikTok Offer",
        activation: "*606#",
        deactivation: "-"));

    ZongOther.add(MobilePackages(
        validity: "30 Days",
        rs: "70",
        onnet: "0",
        offnet: "0",
        sms: "0",
        internet: "500",
        type: PackageType.other,
        bundle: "Zong Free Google Maps",
        activation: "*627#",
        deactivation: "-"));

    ZongOther.add(MobilePackages(
        validity: "3 Days",
        rs: "50",
        onnet: "300",
        offnet: "25",
        sms: "700",
        internet: "1500",
        type: PackageType.other,
        bundle: "Zong Super Recharge Offer",
        activation: "*3454#",
        deactivation: "-"));

    ZongOther.add(MobilePackages(
        validity: "15 Days",
        rs: "200",
        onnet: "0",
        offnet: "50",
        sms: "0",
        internet: "3000",
        type: PackageType.other,
        bundle: "Zong Combo Pack",
        activation: "*15#",
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

  Future<void> zongSharePackage(MobilePackages value) async {
    // Share.share();

    String packageDetails = '''Package Name: ${value.bundle} 
  Valid for: ${value.validity}
  Onnet: ${value.onnet} minutes
  Offnet: ${value.offnet} minutes
  SMS: ${value.sms} messages
  Mbs: ${value.internet}
  Price: ${value.rs}/-
  Activation Code: ${value.activation}
  De-activation Code: ${value.deactivation}
   ''';
    ShareResult result = await Share.shareWithResult(packageDetails);
    if (result.status == ShareResultStatus.success) {
      AppLovinProvider.instance.showInterstitial();
    }
  }
}
