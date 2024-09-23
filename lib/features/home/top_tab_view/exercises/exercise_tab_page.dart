import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/exercises/exercises_name_page.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_cell.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  List data = [
    {
      'title': 'Chest',
      'subTitle': '16 Exercies',
      'image': AppAssets.chestImage,
    },
    {
      'title': 'Back',
      'subTitle': '16 Exercies',
      'image': AppAssets.backBodyImage,
    },
    {
      'title': 'Biceps',
      'subTitle': '16 Exercies',
      'image': AppAssets.bicepsImage,
    },
    {
      'title': 'Triceps',
      'subTitle': '16 Exercies',
      'image': AppAssets.tricepsImage,
    },
    {
      'title': 'Shoulders',
      'subTitle': '16 Exercies',
      'image': AppAssets.shouldersImage,
    },
    {
      'title': 'Abs',
      'subTitle': '16 Exercies',
      'image': AppAssets.absImage,
    },
    {
      'title': 'Legs',
      'subTitle': '16 Exercies',
      'image': AppAssets.legsImage,
    },
    {
      'title': 'Chest',
      'subTitle': '16 Exercies',
      'image': AppAssets.chestTwoImage,
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
            mainAxisSpacing: 15),
        itemBuilder: (context, index) {
          var object = data[index] as Map? ?? {};
          return ExercisesCell(
              object: object,
              onPressed: () {
                context.push(const ExercisesNamePage());
              });
        },
        itemCount: data.length,
      ),
    );
  }
}
