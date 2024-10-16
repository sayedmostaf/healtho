import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_paragraph.dart';

class HealthTipBody extends StatelessWidget {
  final String title;
  final String image;
  final List<String> paragraphs;

  const HealthTipBody({
    super.key,
    required this.title,
    required this.image,
    required this.paragraphs,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image,
                    width: double.maxFinite,
                    height: context.width * .5,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                ...paragraphs
                    .map((text) => HealthTipParagraph(text: text))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
