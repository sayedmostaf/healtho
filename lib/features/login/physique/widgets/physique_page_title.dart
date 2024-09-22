import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter your physique',
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
