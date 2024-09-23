import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_app_bar.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_body.dart';

class ExercisesNamePage extends StatefulWidget {
  const ExercisesNamePage({super.key});

  @override
  State<ExercisesNamePage> createState() => _ExercisesNamePageState();
}

class _ExercisesNamePageState extends State<ExercisesNamePage> {
  List data = [
    {
      "title": "Bench press",
      "image": AppAssets.pressOneImage,
    },
    {
      "title": "Incline press",
      "image": AppAssets.pressTwoImage,
    },
    {
      "title": "Decline Press",
      "image": AppAssets.pressThreeImage,
    },
    {
      "title": "Dumbbell Flys",
      "image": AppAssets.pressFourImage,
    },
    {
      "title": "Dumbbell Flys",
      "image": AppAssets.pressFiveImage,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ExerciseAppbar(),
      body: ExerciseBody(
        data: data,
      ),
    );
  }
}
