import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_image_asset.dart';
import '../../../../core/constant/app_texts.dart';
import '../../../../core/constant/styles.dart';
import '../controller/login_controller.dart';

class PhoneNumberValidationIndicator extends StatelessWidget {
  const PhoneNumberValidationIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 77.w,
        height: 25.h,
        child: GetBuilder<LoginController>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:const EdgeInsets.all(2),
                  width: 18.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    gradient: controller.isValidPhoneNumber
                        ? AppColors.blueLinearGradiant
                        : AppColors.grayLinearGradiant,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18.h),
                    ),
                  ),
                  child: SvgPicture.asset(AppImageAsset.checkIcon),
                ),
                Text(
                  AppTexts.tenNumber,
                  style: Styles.style12,
                ),
              ],
            );
          },
        ));
  }
}