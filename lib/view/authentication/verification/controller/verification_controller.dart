import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_routes.dart';

class VerificationController extends GetxController {
  static VerificationController instance = Get.find();
  late String phoneNumber;
  String? verificationCode;


  void checkVerificationCode(){
    if(verificationCode == '0000'){
        Get.toNamed(AppRoutes.address);
    }
  }

  @override
  void onInit() {
    phoneNumber = Get.arguments['phoneNumber'];
    // TODO: implement onInit
    super.onInit();
  }


}