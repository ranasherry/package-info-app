import 'package:get/get.dart';
// import 'package:location/location.dart' as lc;
// import 'package:geocoding/geocoding.dart';

class LocationFinderController extends GetxController {
  //TODO: Implement LocationFinderController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    getLocation();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  // lc.Location location = lc.Location();

  getLocation() async {
    print("Get Location Called..");
    // // Location location = lc.Location();

    // bool _serviceEnabled;
    // lc.PermissionStatus _permissionGranted;
    // lc.LocationData _locationData;

    // _serviceEnabled = await location.serviceEnabled();
    // if (!_serviceEnabled) {
    //   _serviceEnabled = await location.requestService();
    //   if (!_serviceEnabled) {
    //     return;
    //   }
    // }

    // _permissionGranted = await location.hasPermission();
    // if (_permissionGranted == lc.PermissionStatus.denied) {
    //   _permissionGranted = await location.requestPermission();
    //   if (_permissionGranted != lc.PermissionStatus.granted) {
    //     return;
    //   }
    // }

    // _locationData = await location.getLocation();

    // print("LocationData: ${_locationData.longitude}");

    // List<Placemark> placemarks = await placemarkFromCoordinates(
    //     _locationData.latitude ?? 0, _locationData.longitude ?? 0);

    // for (var placemark in placemarks) {
    //   // print("City: ${placemark.country}");
    //   // print("subLocality ${placemark.subLocality}");
    //   // print("street ${placemark.street}");
    //   // print("administrativeArea ${placemark.administrativeArea}");
    //   // print("subAdministrativeArea ${placemark.subAdministrativeArea}");
    //   // print("locality ${placemark.locality}");
    //   print("placemark ${placemark}");
    // }

    // Passed the coordinates of latitude and longitude
  }
}
