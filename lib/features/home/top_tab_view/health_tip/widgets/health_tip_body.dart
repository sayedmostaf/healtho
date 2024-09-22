import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_paragraph.dart';

class HealthTipBody extends StatelessWidget {
  const HealthTipBody({super.key});

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
                    AppAssets.tipOneImage,
                    width: double.maxFinite,
                    height: context.width * .5,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'A diet without exercise is useless',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const HealthTipParagraph(
                  text:
                      '1) Interval Training is a form of exercise in which you alternate between two or more different exercise . This Consist of doing an exercise at a very high level intensity for a short bursts.',
                ),
                const HealthTipParagraph(
                  text:
                      "2) Some high intensity interval training is a great way to burn calories and lose weight.",
                ),
                const HealthTipParagraph(
                  text:
                      "3) Another great thing is about interval training is that it is extremely time efficient. It does not make any time to get into shape when you practice high intensity interval training.",
                ),
                const HealthTipParagraph(
                    text:
                        "4) Exercise, especially high intensity interval training, is awesome because it keeps you younger for longer...."),
                const HealthTipParagraph(
                  text:
                      "5) Interval Training is a form of exercise in which you alternate between two or more different exercise . This Consist of doing an exercise at a very high level intensity for a short bursts.",
                ),
                const HealthTipParagraph(
                  text:
                      "6) Some high intensity interval training is a great way to burn calories and lose weight.",
                ),
                const HealthTipParagraph(
                  text:
                      "7) Another great thing is about interval training is that it is extremely time efficient. It does not make any time to get into shape when you practice high intensity interval training.",
                ),
                const HealthTipParagraph(
                  text:
                      "8) Exercise, especially high intensity interval training, is awesome because it keeps you younger for longer….",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
