import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../import/common_imports.dart';
import '../../utils/custom_button.dart';

class Ca05LocationOnMapScreen extends StatelessWidget {
  final Function goToNextPage;

  Ca05LocationOnMapScreen({super.key, required this.goToNextPage});
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
            Expanded(
              child: GoogleMap(
                // mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: CustomButtonFilled(
                title: "Next",
                height: 58.h,
                onTap: () {
                  // widget.index++;
                  goToNextPage();
                },
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
