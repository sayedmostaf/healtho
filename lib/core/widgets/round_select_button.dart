import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/widgets/round_button.dart';

class RoundSelectButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  final double width;
  final String? image;
  final bool isPadding;
  final VoidCallback onPressed;
  const RoundSelectButton(
      {super.key,
      required this.title,
      this.type = RoundButtonType.primary,
      this.height = 50,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w600,
      this.width = double.maxFinite,
      this.isPadding = true,
      required this.onPressed,
      this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: isPadding ? 20 : 0),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        decoration: BoxDecoration(
            color: type == RoundButtonType.primary
                ? AppColors.primary
                : AppColors.textBackground,
            border: type == RoundButtonType.line
                ? Border.all(color: AppColors.board)
                : null,
            borderRadius: BorderRadius.circular(25)),
        height: height,
        child: Row(
          children: [
            if (image != null)
              SizedBox(
                width: 60,
                child: Image.asset(
                  image!,
                  width: 20,
                  height: 20,
                ),
              ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: type == RoundButtonType.primary
                        ? AppColors.buttonPrimaryText
                        : AppColors.buttonSecondaryText,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
              ),
            ),
            if (image != null)
              Container(
                width: 60,
              )
          ],
        ),
      ),
    );
  }
}
