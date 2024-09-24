import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/day_exercises_row.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_exercises_page.dart';

class DayExercisesPage extends StatefulWidget {
  const DayExercisesPage({super.key});

  @override
  State<DayExercisesPage> createState() => _DayExercisesPageState();
}

class _DayExercisesPageState extends State<DayExercisesPage> {
  List dayData = [
    {
      "name": "Bench Press",
      "sets": "3",
      "reps": "12 - 10 - 0",
      "rest": "30 Sec",
      "image": AppAssets.dayOneImage,
      "is_complete": false,
    },
    {
      "name": "Bench Press",
      "sets": "3",
      "reps": "12 - 10 - 0",
      "rest": "30 Sec",
      "image": AppAssets.dayTwoImage,
      "is_complete": true,
    },
    {
      "name": "Bench Press",
      "sets": "3",
      "reps": "12 - 10 - 0",
      "rest": "30 Sec",
      "image": AppAssets.dayThreeImage,
      "is_complete": false,
    },
    {
      "name": "Bench Press",
      "sets": "3",
      "reps": "12 - 10 - 0",
      "rest": "30 Sec",
      "image": AppAssets.dayFourImage,
      "is_complete": false,
    },
    {
      "name": "Bench Press",
      "sets": "3",
      "reps": "12 - 10 - 0",
      "rest": "30 Sec",
      "image": AppAssets.dayFiveImage,
      "is_complete": false,
    },
  ];

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
          "Week",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Reset',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var object = dayData[index] as Map? ?? {};
          return DayExercisesRow(
              object: object,
              onPressed: () {
                context.push(const WorkoutExercisesDetailsPage());
              });
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: dayData.length,
      ),
    );
  }
}
