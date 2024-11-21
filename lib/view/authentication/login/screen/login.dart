import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/authentication/login/controller/login_controller.dart';
import 'package:graduation_project/view/widget/logo/app_logo.dart';

import '../../../../core/constant/app_sizes.dart';
import '../../../../core/constant/app_texts.dart';
import '../../../../core/constant/styles.dart';
import '../../../widget/gradiant/custom_gradient_button.dart';
import '../widget/phone_number_field.dart';
import '../widget/phone_number_validation_indicator.dart';
import '../widget/terms_and_condition_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 75.h,),
              const Center(child: AppLogo()),

              SizedBox(height: (AppSizes.lg * 2).h,),
              const PhoneNumberField(),

              SizedBox(height: AppSizes.spaceBtwItems.h,),
              const PhoneNumberValidationIndicator(),

              SizedBox(height: 282.h,),
              const TermsAndConditionText(),

              SizedBox(height: (AppSizes.lg * 2).h,),
              CustomGradientButton(
                text: AppTexts.ok,
                onPressed: () {
                  controller.goToVerificationCode();
                },
                style: Styles.style18,
              ),

              SizedBox(height: AppSizes.sm.h,),
              Center(child: Text(AppTexts.followAsAVisitor, style: Styles.style20,)),
            ],
          ),
        ),
      ),
    );
  }
}

