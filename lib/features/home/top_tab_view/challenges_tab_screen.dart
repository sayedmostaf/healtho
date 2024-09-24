import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_cell.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_details_page.dart';

class ChallengesTabScreen extends StatefulWidget {
  const ChallengesTabScreen({super.key});

  @override
  State<ChallengesTabScreen> createState() => _ChallengesTabScreenState();
}

class _ChallengesTabScreenState extends State<ChallengesTabScreen> {
  List data = [
    {
      "title": "Bench Press",
      "subtitle": "5 Week",
      "image": AppAssets.challengeOneImage
    },
    {
      "title": "200 Situps",
      "subtitle": "10 Week",
      "image": AppAssets.challengeTwoImage
    },
    {
      "title": "100 Pushups",
      "subtitle": "8 Week",
      "image": AppAssets.challengeThreeImage
    },
    {
      "title": "300 Squats",
      "subtitle": "5 Week",
      "image": AppAssets.challengeFourImage
    },
    {
      "title": "Run 5 Km",
      "subtitle": "S Week",
      "image": AppAssets.challengeFiveImage
    },
    {
      "title": "300 Pushups",
      "subtitle": "14 Week",
      "image": AppAssets.challengeSixImage
    },
    {
      "title": "200 Pushups",
      "subtitle": "10 Week",
      "image": AppAssets.challengeSevenImage
    },
    {
      "title": "100 Pullups",
      "subtitle": "10 Week",
      "image": AppAssets.challengeEightImage
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 15,
          mainAxisExtent: 15,
        ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          var object = data[index] as Map? ?? {};
          return ExercisesCell(
              object: object,
              onPressed: () {
                context.push(const WorkoutDetailsPage());
              });
        },
      ),
    );
  }
}
