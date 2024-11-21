import 'package:get/get.dart';
import 'package:graduation_project/core/class/location_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    LocationHelper.requestLocationPermission();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
