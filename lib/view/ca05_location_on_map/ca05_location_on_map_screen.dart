import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../import/common_imports.dart';

class Ca05LocationOnMapScreen extends StatelessWidget {
  Ca05LocationOnMapScreen({super.key});
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.4504, 73.1350),
    zoom: 12.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.maxFinite,
              child: GoogleMap(
                // mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
