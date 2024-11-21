import 'package:flutter/material.dart';

import '../../../../core/constant/app_texts.dart';
import '../../../widget/text_field/custom_text_form_field.dart';
import '../controller/login_controller.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: LoginController.instance.phoneNumber,
      hintText: AppTexts.enterYourPhoneNumber,
      maxLength: 10,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        LoginController.instance.checkNumberValidate(value);
      },
    );
  }
}