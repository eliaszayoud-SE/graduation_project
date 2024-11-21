
import 'package:get/get.dart';
import 'package:graduation_project/view/address/screen/address.dart';
import 'package:graduation_project/view/address/screen/address_add.dart';
import 'package:graduation_project/view/authentication/login/screen/login.dart';
import 'package:graduation_project/view/authentication/onboarding/screen/on_boarding.dart';
import 'package:graduation_project/view/authentication/verification/screen/verification_code.dart';
import 'core/constant/app_routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen(),),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen(),),
  GetPage(name: AppRoutes.verificationCode, page: ()=> const VerificationCodeScreen()),
  GetPage(name: AppRoutes.address, page: () => const AddressScreen(),),
  GetPage(name: AppRoutes.addressadd, page: () => const AddressAdd(),),
];
