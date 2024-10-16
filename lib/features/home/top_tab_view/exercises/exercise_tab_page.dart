import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/data/abs_exercises.dart';
import 'package:healtho/core/utils/data/back_exercises.dart';
import 'package:healtho/core/utils/data/biceps_exercises.dart';
import 'package:healtho/core/utils/data/chest_exercises.dart';
import 'package:healtho/core/utils/data/legs_exercises.dart';
import 'package:healtho/core/utils/data/shoulder_exercises.dart';
import 'package:healtho/core/utils/data/triceps_exercises.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/exercises/exercises_name_page.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_cell.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  List<Map<String, dynamic>> data = [
    {
      'title': 'Chest',
      'subTitle': '${ChestExercises.getExercises().length} Exercises',
      'image': AppAssets.chestImage,
      'exercises': ChestExercises.getExercises()
    },
    {
      'title': 'Back',
      'subTitle': '${BackExercises.getExercises().length} Exercises',
      'image': AppAssets.backBodyImage,
      'exercises': BackExercises.getExercises()
    },
    {
      'title': 'Biceps',
      'subTitle': '${BicepsExercises.getExercises().length} Exercises',
      'image': AppAssets.bicepsImage,
      'exercises': BicepsExercises.getExercises() 
    },
    {
      'title': 'Triceps',
      'subTitle': '${TricepsExercises.getExercises().length} Exercises',
      'image': AppAssets.tricepsImage,
      'exercises': TricepsExercises.getExercises() // Add exercises data here
    },
    {
      'title': 'Shoulders',
      'subTitle': '${ShoulderExercises.getExercises().length} Exercises',
      'image': AppAssets.shouldersImage,
      'exercises': ShoulderExercises.getExercises() 
    },
    {
      'title': 'Abs',
      'subTitle': '${AbsExercises.getExercises().length} Exercises',
      'image': AppAssets.absImage,
      'exercises': AbsExercises.getExercises()
    },
    {
      'title': 'Legs',
      'subTitle': '${LegsExercises.getExercises().length} Exercises',
      'image': AppAssets.legsImage,
      'exercises': LegsExercises.getExercises() 
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
        itemBuilder: (context, index) {
          var object = data[index]; 
          return ExercisesCell(
            object: object,
            onPressed: () {
              context.push(ExercisesNamePage(
                  exerciseData: object as Map<String, dynamic>));
            },
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
