import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/class/helper_functions.dart';
import 'package:graduation_project/core/constant/app_routes.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  bool isValidPhoneNumber = false;
  late TextEditingController phoneNumber;

  void checkNumberValidate(String value) {
    isValidPhoneNumber = value.length == 10 && value.startsWith('0') && HelperFunctions.validInput(value, 'phone');
    update();
  }

  goToVerificationCode(){
    if(isValidPhoneNumber){
        Get.toNamed(AppRoutes.verificationCode, arguments: {
          'phoneNumber':phoneNumber.text
        });
    }
  }

  @override
  void onInit() {
    phoneNumber = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    phoneNumber.dispose();
    // TODO: implement onClose
    super.onClose();
  }

}