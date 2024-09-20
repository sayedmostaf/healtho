import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

enum RoundButtonType { primary, line }

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.title,
    this.type = RoundButtonType.primary,
    this.height = 50,
    this.fontSize = 14,
    this.radius = 25,
    this.fontWeight = FontWeight.w600,
    this.width = double.maxFinite,
    this.isPadding = true,
    required this.onPressed,
    this.image,
  });

  final String title;
  final RoundButtonType type;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  final double width;
  final String? image;
  final bool isPadding;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            borderRadius: BorderRadius.circular(radius)),
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
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: type == RoundButtonType.primary
                      ? AppColors.buttonPrimaryText
                      : AppColors.buttonSecondaryText,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
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
