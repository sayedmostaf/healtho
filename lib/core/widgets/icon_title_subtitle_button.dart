import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class IconTitleSubtitleButton extends StatelessWidget {
  const IconTitleSubtitleButton(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      required this.onPressed});

  final String title, subTitle, icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              color: AppColors.buttonBackground,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      subTitle,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
