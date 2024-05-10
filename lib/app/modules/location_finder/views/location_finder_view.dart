import 'package:all_network_packages/app/modules/home/controllers/app_lovin_provider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/location_finder_controller.dart';

class LocationFinderView extends GetView<LocationFinderController> {
  LocationFinderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001D76),
        leading: GestureDetector(
            onTap: () {
              AppLovinProvider.instance.showInterstitial();
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("CNIC Checker"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LocationFinderView is working ${controller.count.value}',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

// class Convert_Lat_Long extends StatefulWidget {
//   const Convert_Lat_Long({Key? key}) : super(key: key);
//   @override
//   _Convert_Lat_LongState createState() => _Convert_Lat_LongState();
// }

// class _Convert_Lat_LongState extends State<Convert_Lat_Long> {
// // on below line we have created controllers for accessing values from textfield
//   TextEditingController latitudeController = new TextEditingController();
//   TextEditingController longitudeController = new TextEditingController();
// // variable created to store the address
//   String stAddress = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // on below line we have given title of App
//         title: Text('GFG'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Get Address from Coordinates',
//                 style: TextStyle(
//                     color: Color(0xFF0F9D58),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               ),
//               SizedBox(height: 10),

//               // textfield1 for taking input as latitude
//               TextField(
//                 controller: latitudeController,
//                 decoration: InputDecoration(
//                     // Given Hint Text
//                     hintText: 'Latitude',
//                     border: OutlineInputBorder(
//                       // Given border to textfield
//                       borderRadius: BorderRadius.circular(10),
//                     )),
//               ),
//               SizedBox(height: 10),

//               // textfield2 for taking input as longitude
//               TextField(
//                 controller: longitudeController,
//                 decoration: InputDecoration(
//                     // Given hint text
//                     hintText: 'Longitude',
//                     border: OutlineInputBorder(
//                       // given border to textfield
//                       borderRadius: BorderRadius.circular(10),
//                     )),
//               ),
//               SizedBox(height: 10),

//               // Given padding to the Container
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Container(
//                   child: Center(
//                     child: Text(stAddress),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),

//               GestureDetector(
//                 onTap: () async {
//                   // stored the value of latitude in lat from textfield
//                   String lat = latitudeController.text;
//                   // stored the value of longitude in lon from textfield
//                   String lon = longitudeController.text;

//                   // converted the lat from string to double
//                   double lat_data = double.parse(lat);
//                   // converted the lon from string to double
//                   double lon_data = double.parse(lon);

//                   // Passed the coordinates of latitude and longitude
//                   final coordinates = new Coordinates(lat_data, lon_data);
//                   var address = await Geocoder.local
//                       .findAddressesFromCoordinates(coordinates);
//                   var first = address.first;

//                   // on below line we have set the address to string
//                   setState(() {
//                     stAddress = first.addressLine.toString();
//                   });
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       // specified color for button
//                       color: Colors.green,
//                     ),
//                     // given height for button
//                     height: 50,
//                     child: Center(
//                       // on below line we have given button name
//                       child: Text(
//                         'Convert',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
