import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class SecrtionButton extends StatelessWidget {
  const SecrtionButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'More',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
