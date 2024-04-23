// To parse this JSON data, do
//
//     final mobilePackages = mobilePackagesFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

MobilePackages? mobilePackagesFromMap(String str) =>
    MobilePackages.fromMap(json.decode(str));

String mobilePackagesToMap(MobilePackages? data) => json.encode(data!.toMap());

class MobilePackages {
  MobilePackages({
    required this.validity,
    required this.rs,
    required this.onnet,
    required this.offnet,
    required this.sms,
    required this.internet,
    required this.type,
    required this.bundle,
    required this.activation,
    required this.deactivation,
  });

  String? validity;
  String? rs;
  String? onnet;
  String? offnet;
  String? sms;
  String? internet;
  PackageType? type;
  String? bundle;
  String? activation;
  String? deactivation;

  factory MobilePackages.fromMap(Map<String, dynamic> json) => MobilePackages(
        validity: json["validity"],
        rs: json["rs"],
        onnet: json["onnet"],
        offnet: json["offnet"],
        sms: json["sms"],
        internet: json["internet"],
        type: json["type"],
        bundle: json["bundle"],
        activation: json["activation"],
        deactivation: json["deactivation"],
      );

  Map<String, dynamic> toMap() => {
        "validity": validity,
        "rs": rs,
        "onnet": onnet,
        "offnet": offnet,
        "sms": sms,
        "internet": internet,
        "type": type,
        "bundle": bundle,
        "activation": activation,
        "deactivation": deactivation,
      };
}

enum PackageType { sms, call, data, other }
