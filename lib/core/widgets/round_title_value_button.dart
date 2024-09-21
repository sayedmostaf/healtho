import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class RoundTitleValueButton extends StatelessWidget {
  const RoundTitleValueButton(
      {super.key,
      required this.title,
      required this.value,
      required this.onPressed});
  final String title, value;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: AppColors.textBackground,
              border: Border.all(color: AppColors.board, width: 1),
              borderRadius: BorderRadius.circular(25)),
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.buttonSecondaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.buttonSecondaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
