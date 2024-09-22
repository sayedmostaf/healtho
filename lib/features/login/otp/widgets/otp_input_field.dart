import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class OTPInputField extends StatelessWidget {
  final OtpFieldControllerV2 controller;
  const OTPInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return OTPTextFieldV2(
      controller: controller,
      length: 4,
      width: context.width * .7,
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldWidth: 50,
      fieldStyle: FieldStyle.box,
      outlineBorderRadius: 30,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryText,
      ),
      onChanged: (pin) {},
      onCompleted: (pin) {},
    );
  }
}
