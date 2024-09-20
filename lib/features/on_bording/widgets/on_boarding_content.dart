import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({super.key, required this.pageObject});
  final Map<String, String> pageObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        Text(
          pageObject["title"].toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        Text(
          pageObject["subTitle"].toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 15,
          ),
        ),
        Container(
          width: context.width,
          height: context.width,
          alignment: Alignment.center,
          child: Image.asset(
            pageObject["image"]!,
            width: context.width * 0.65,
            fit: BoxFit.fitWidth,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
