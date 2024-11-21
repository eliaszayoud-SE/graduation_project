import 'package:flutter/material.dart';
import 'package:graduation_project/core/constant/app_texts.dart';
import 'package:graduation_project/core/constant/styles.dart';

class VerificationMessage extends StatelessWidget {
  const VerificationMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: AppTexts.resendVerificationCode,
              style:Styles.style14.copyWith(decoration: TextDecoration.underline)
          ),
          TextSpan(
              text:  AppTexts.or,
              style:Styles.style14),

          TextSpan(
              text: AppTexts.callMeToHearVerificationCode,
              style:Styles.style14.copyWith(decoration: TextDecoration.underline)
          ),
        ],
      ),
    );
  }
}