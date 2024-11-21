import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/class/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constant/app_sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
        this.actions,
        this.title,
        this.showArrowBack = false,
        this.leadingIconOnPressed, this.leadingIcon});
  final List<Widget>? actions;
  final Widget? title;
  final IconData? leadingIcon;
  final bool showArrowBack;
  final void Function()? leadingIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: (AppSizes.defaultSpace / 2).w),
      child: AppBar(
        automaticallyImplyLeading: false,
        actions: actions,
        leading: showArrowBack
            ? IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Iconsax.arrow_right_1))
            : leadingIcon != null
            ? IconButton(onPressed: leadingIconOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(HelperFunctions.getAppBarHeight());
}
