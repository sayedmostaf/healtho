import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/title_value_row.dart';

class WorkoutIntroductionsPage extends StatelessWidget {
  const WorkoutIntroductionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Image.asset(
            AppAssets.backImage,
            width: 20,
            height: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.secondary,
        centerTitle: false,
        title: const Text(
          'Introduction',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Complete the beginner program',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Description',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "This is a beginner quick start guide that will move you from day 1 to day 60, providing you with starting training and instructions...",
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TitleValueRow(
                title: "Duration",
                value: "5 Weeks",
              ),
              const TitleValueRow(
                title: "Goal",
                value: "Muscle Building",
              ),
              const TitleValueRow(
                title: "Training Level",
                value: "Beginner",
              ),
              const TitleValueRow(
                title: "Days per Week",
                value: "4 days",
              ),
              const TitleValueRow(
                title: "Target Gender",
                value: "Male and Female",
              )
            ],
          ),
        ),
      ),
    );
  }
}
