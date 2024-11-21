import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressAddController extends GetxController {
  late double latitude;
  late double longitude;
  String locality = '';
  String street = '';
  CameraPosition? kGooglePlex;
  Set<Marker> markers = {};
  final Completer<GoogleMapController> completerController =
      Completer<GoogleMapController>();
  loadedMap() async {
    latitude = Get.arguments['latitude'];
    longitude = Get.arguments['longitude'];
    kGooglePlex = CameraPosition(
      target: LatLng(latitude, longitude),
      zoom: 14.4746,
    );
    await getCurrentLocationMarker();
    await getLocationInformationLocalityAndStreet();
    update();
  }

  getCurrentLocationMarker() {
    markers.add(Marker(
        markerId: const MarkerId("1"), position: LatLng(latitude, longitude)));
  }

  getLocationInformationLocalityAndStreet() async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      locality = placemarks[0].locality!;
      street = placemarks[3].street!;
    } catch (e) {
      print('Error: $e');
    }
  }

  changeMarkerLocation(LatLng latLng) async {
    markers.clear();
    markers.add(Marker(markerId: const MarkerId("1"), position: latLng));
    latitude = latLng.latitude;
    longitude = latLng.longitude;
    await getLocationInformationLocalityAndStreet();
    update();
  }

  onPressedSaveLocation() {}
  @override
  void onInit() {
    loadedMap();
    super.onInit();
  }
}
