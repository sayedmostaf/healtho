import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class FooterOptions extends StatelessWidget {
  const FooterOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Change number',
            style: TextStyle(
              color: AppColors.placeholder,
              fontSize: 12,
            ),
          ),
        ),
        OtpTimerButton(
          onPressed: () {},
          text: const Text(
            'Resend code',
            style: TextStyle(
              color: Color(0xff8E44AD),
              fontSize: 12,
            ),
          ),
          duration: 60,
          backgroundColor: AppColors.primaryText,
          buttonType: ButtonType.text_button,
        )
      ],
    );
  }
}
