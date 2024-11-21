import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/constant/app_sizes.dart';
import 'package:graduation_project/view/address/controller/address_controller.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_texts.dart';
import '../../../core/constant/styles.dart';
import '../../widget/gradiant/custom_gradient_button.dart';
import 'custom_border_button.dart';

class AddressActionSection extends StatelessWidget {
  const AddressActionSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            Text(AppTexts.welcomeMessage, style: Styles.styleBold20,),

            SizedBox(height: AppSizes.sm.h,),
            Text(AppTexts.locationExplorationMessage, style: Styles.style16.copyWith(color: AppColors.greyColor4),),

            SizedBox(height: AppSizes.md.h,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
                child: CustomBorderButton(
                  text: AppTexts.useYourCurrentLocation,
                  onPressed: () {},
                )),

            SizedBox(height: AppSizes.sm.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
              child: CustomGradientButton(
                onPressed: () {
                  AddressController.instance.onPressedAddLocationFromMap();
                },
                text: AppTexts.addNewAddress,
                style: Styles.style18,
              ),
            ),

            SizedBox(height: AppSizes.sm.h,),
            Text(AppTexts.skip, style: Styles.style20,),
          ]),
        ));
  }
}