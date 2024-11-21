import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/constant/app_texts.dart';

import '../../../../core/constant/styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313.h,
      height: 60.h,
      child: RichText(
        text: TextSpan(
          text:
          AppTexts.loginAgreementText,
          style: Styles.style14,
          children: [
            TextSpan(
                text: AppTexts.termsAndConditions,
                style:Styles.style14.copyWith(decoration: TextDecoration.underline)
            ),
            const TextSpan(
              text:  AppTexts.and,
            ),
            TextSpan(
                text: AppTexts.privacyPolicy,
                style:Styles.style14.copyWith(decoration: TextDecoration.underline)
            ),
          ],
        ),
      ),
    );
  }
}
