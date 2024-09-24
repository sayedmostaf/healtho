import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/number_title_subtitle_button.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/week_detail_page.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_introductions_page.dart';

class WorkoutDetailsBody extends StatelessWidget {
  const WorkoutDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  AppAssets.workPlanOneImage,
                  width: double.maxFinite,
                  height: context.width * 0.5,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Goal',
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Muscle Building",
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Duration",
                              style: TextStyle(
                                  color: AppColors.primaryText, fontSize: 12),
                            ),
                            Text(
                              "5 Weeks",
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Level",
                              style: TextStyle(
                                  color: AppColors.primaryText, fontSize: 12),
                            ),
                            Text(
                              "Beginner",
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                context.push(const WorkoutIntroductionsPage());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Introduction",
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Image.asset(
                    AppAssets.nextImage,
                    width: 15,
                    height: 15,
                  )
                ],
              ),
            ),
            Text(
              "This is a beginner quick start guide that will move you from day 1 to day 60, providing you with starting training and instructions...",
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 8,
                      width: context.width - 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.secondaryText.withOpacity(0.15),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 8,
                        width: (context.width - 40) * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "30% Complete",
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            NumberTitleSubtitleButton(
                title: 'Week',
                subtitle: "This is a beginner quick start.....",
                number: "01",
                onPressed: () {
                  context.push(const WeekDetailPage());
                }),
            NumberTitleSubtitleButton(
              title: "Week",
              subtitle: "This is a beginner quick start.....",
              number: "02",
              onPressed: () {},
            ),
            NumberTitleSubtitleButton(
              title: "Week",
              subtitle: "This is a beginner quick start.....",
              number: "03",
              onPressed: () {},
            ),
            NumberTitleSubtitleButton(
              title: "Week",
              subtitle: "This is a beginner quick start.....",
              number: "04",
              onPressed: () {},
            ),
            NumberTitleSubtitleButton(
              title: "Week",
              subtitle: "This is a beginner quick start.....",
              number: "05",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
