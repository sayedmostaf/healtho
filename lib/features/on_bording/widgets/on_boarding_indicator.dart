import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class OnboardingIndicator extends StatelessWidget {
  final List<Map<String, String>> pages;
  final int selectedPage;

  const OnboardingIndicator(
      {super.key, required this.pages, required this.selectedPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: pages.map((e) {
        var index = pages.indexOf(e);
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color:
                index == selectedPage ? AppColors.primary : AppColors.inActive,
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }).toList(),
    );
  }
}
