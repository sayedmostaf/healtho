import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_cell.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_details_page.dart';

class ChallengesTabPage extends StatefulWidget {
  const ChallengesTabPage({super.key});

  @override
  State<ChallengesTabPage> createState() => _ChallengesTabPageState();
}

class _ChallengesTabPageState extends State<ChallengesTabPage> {
  List data = [
    {
      "title": "Bench Press",
      "subTitle": "5 Week",
      "image": AppAssets.challengeOneImage
    },
    {
      "title": "200 Situps",
      "subTitle": "10 Week",
      "image": AppAssets.challengeTwoImage
    },
    {
      "title": "100 Pushups",
      "subTitle": "8 Week",
      "image": AppAssets.challengeThreeImage
    },
    {
      "title": "300 Squats",
      "subTitle": "5 Week",
      "image": AppAssets.challengeFourImage
    },
    {
      "title": "Run 5 Km",
      "subTitle": "S Week",
      "image": AppAssets.challengeFiveImage
    },
    {
      "title": "300 Pushups",
      "subTitle": "14 Week",
      "image": AppAssets.challengeSixImage
    },
    {
      "title": "200 Pushups",
      "subTitle": "10 Week",
      "image": AppAssets.challengeSevenImage
    },
    {
      "title": "100 Pullups",
      "subTitle": "10 Week",
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
          mainAxisSpacing: 15,
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
