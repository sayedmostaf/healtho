import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class HealthTipParagraph extends StatelessWidget {
  const HealthTipParagraph({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 13,
        ),
      ),
    );
  }
}
