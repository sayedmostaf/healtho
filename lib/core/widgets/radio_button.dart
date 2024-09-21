import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class RadioButton extends StatelessWidget {
  const RadioButton(
      {super.key,
      required this.title,
      required this.isSelect,
      required this.onPressed});
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: isSelect ? AppColors.primary : AppColors.inActive,
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
