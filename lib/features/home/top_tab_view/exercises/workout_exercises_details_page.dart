import 'package:flutter/material.dart';
import 'package:healtho/core/utils/models/exercise_model.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_app_bar.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/workout_exercises_details_body.dart';

class WorkoutExercisesDetailsPage extends StatelessWidget {
  final ExerciseModel exerciseModel;

  const WorkoutExercisesDetailsPage({super.key, required this.exerciseModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExerciseAppbar(title: exerciseModel.title),
      body: WorkoutExercisesDetailsBody(
        imagesData: exerciseModel.howTo,
        exerciseModel: exerciseModel,
      ),
    );
  }
}
