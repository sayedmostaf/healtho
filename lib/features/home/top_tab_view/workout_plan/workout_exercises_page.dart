import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/widgets/workout_exercises_details_body.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/widgets/workout_exercises_details_floating_action_button.dart';

class WorkoutExercisesDetailsPage extends StatefulWidget {
  const WorkoutExercisesDetailsPage({super.key});

  @override
  State<WorkoutExercisesDetailsPage> createState() =>
      _WorkoutExercisesDetailsPageState();
}

class _WorkoutExercisesDetailsPageState
    extends State<WorkoutExercisesDetailsPage> {
  List imagesData = [
    AppAssets.exerciseOneImage,
    AppAssets.exerciseTwoImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        centerTitle: false,
        title: const Text(
          'Bench Press',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: WorkoutExercisesDetailsBody(
        imagesData: imagesData,
      ),
      floatingActionButton: const WorkoutExercisesDetailsFloatingActionButton(),
    );
  }
}
