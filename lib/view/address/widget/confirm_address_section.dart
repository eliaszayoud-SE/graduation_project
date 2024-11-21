import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:graduation_project/core/constant/app_sizes.dart';
import 'package:graduation_project/core/constant/app_texts.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_image_asset.dart';
import '../../../core/constant/styles.dart';
import '../../widget/gradiant/custom_gradient_button.dart';
import '../controller/address_add_controller.dart';

class ConfirmAddressSection extends StatelessWidget {
  const ConfirmAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 2,
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            SizedBox(height: AppSizes.lg.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SvgPicture.asset(AppImageAsset.locationIcon),
                        SizedBox(width: AppSizes.md.h,),
                        GetBuilder<AddressAddController>(
                          builder: (controller) {
                            return Text('${controller.locality} , ${controller.street}', style: Styles.styleLight18,);
                          },
                        )
                        // Text(data)
                      ],
                    ),
                  ),
                  const Divider(color: AppColors.dividerColor, thickness: 1,),
                ],
              ),
            ),

            SizedBox(height: AppSizes.lg.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
              child: CustomGradientButton(
                onPressed: () {},
                text: AppTexts.confirmLocation,
                style: Styles.style18,
              ),
            ),
          ]),
        ));
  }
}
