import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/constant/app_routes.dart';

class AddressController extends GetxController {

  static AddressController instance = Get.find();

  late Position position;
  double? latitude;
  double? longitude;
  CameraPosition? kGooglePlex;
  Set<Marker> markers = {};
  final Completer<GoogleMapController> completerController = Completer<GoogleMapController>();

  addMarkers(LatLng latLng) {
    markers.clear();
    markers.add(Marker(markerId: const MarkerId("1"), position: latLng));
    latitude = latLng.latitude;
    longitude = latLng.longitude;
    // update();
  }

  getCurrentLocation() async {
    position = await Geolocator.getCurrentPosition();
    print("========== latitude ==========${position.latitude}");
    print("========== longitude ==========${position.longitude}");
    kGooglePlex = CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 14.4746,
    );
    await addMarkers(LatLng(position.latitude, position.longitude));
    update();
  }

  onPressedUseCurrentLocation() {}

  onPressedAddLocationFromMap() {
    if (latitude == null || longitude == null) {
      Get.defaultDialog(
          title: 'Warning', middleText: "Please wait until map loaded");
    } else {
      Get.toNamed(AppRoutes.addressadd,
          arguments: {'latitude': latitude, 'longitude': longitude});
    }
  }

  @override
  void onInit() {
    print(kGooglePlex);
    getCurrentLocation();
    super.onInit();
  }
}
