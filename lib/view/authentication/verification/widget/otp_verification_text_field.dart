import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/view/authentication/verification/controller/verification_controller.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_sizes.dart';

class OtpVerificationTextField extends StatelessWidget {
  const OtpVerificationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Force LTR direction
      child: OtpTextField(
        margin: EdgeInsets.zero,
        numberOfFields: 4,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        fieldWidth: 60.w,
        fieldHeight: 50.h,
        borderColor: AppColors.greyColor,
        borderWidth: 2,
        showFieldAsBox: true,
        onSubmit: (String verificationCode) {
            VerificationController.instance.verificationCode = verificationCode;
        },
      ),
    );
  }
}