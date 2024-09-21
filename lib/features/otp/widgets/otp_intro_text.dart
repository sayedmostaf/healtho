import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter the code that was sent to your\nEntered mobile number',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 14,
      ),
    );
  }
}
