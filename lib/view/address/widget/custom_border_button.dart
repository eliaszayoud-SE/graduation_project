import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

class CustomBorderButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomBorderButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      minWidth: double.infinity,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.primaryColor)),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.style18.copyWith(color: AppColors.blueColor),
      ),
    );
  }
}
