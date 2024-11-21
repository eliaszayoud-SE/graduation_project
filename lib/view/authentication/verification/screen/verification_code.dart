import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_sizes.dart';
import 'package:graduation_project/view/widget/app_bar/app_bar.dart';
import '../../../../core/constant/app_texts.dart';
import '../../../../core/constant/styles.dart';
import '../../../widget/gradiant/custom_gradient_button.dart';
import '../controller/verification_controller.dart';
import '../widget/otp_verification_text_field.dart';
import '../widget/verification_code.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerificationController());
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
            AppTexts.phoneNumberVerification, // AppBar title
            style: Styles.styleBold20
        ),
        showArrowBack: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: (AppSizes.xl * 2).h,),
              Text('${AppTexts.enterVerificationCode} ${controller.phoneNumber}' , style: Styles.style14,),

              const SizedBox(height: AppSizes.spaceBtwItems,),
              const OtpVerificationTextField(),

              SizedBox(height: AppSizes.spaceBtwItems.h,),
              Text(AppTexts.minute, style: Styles.style14,),

              SizedBox(height: AppSizes.xl.h,),
              const Text(AppTexts.verificationCodeNotSentMessage, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),

              SizedBox(height: AppSizes.sm.h),
              const VerificationMessage(),

              SizedBox(height: 313.h,),
              CustomGradientButton(
                text: AppTexts.confirm,
                onPressed: () {
                  controller.checkVerificationCode();
                },
                style: Styles.style18,
              ),
            ],
          ),
        ),
      ),
    );
}}




