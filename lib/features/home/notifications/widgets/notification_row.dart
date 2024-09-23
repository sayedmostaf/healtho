import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class NotificationRow extends StatelessWidget {
  const NotificationRow(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.textBackground,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.board, width: 1),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
