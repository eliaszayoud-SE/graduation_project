
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_texts.dart';
import '../../../core/constant/styles.dart';
import '../gradiant/custom_gradient_text.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 108.w,
      height: 95.h,
      child: Center(
        child: CustomGradientText(
          text: AppTexts.forYourHome,
          style: Styles.style45.copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}