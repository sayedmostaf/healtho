import 'package:flutter/material.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/utils/models/exercise_model.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_row.dart';
import 'package:healtho/features/home/top_tab_view/exercises/workout_exercises_details_page.dart';

class ExerciseBody extends StatelessWidget {
  const ExerciseBody({super.key, required this.exercises});
  final List<ExerciseModel> exercises;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) {
              var exercise = exercises[index]; 
              return ExercisesRow(
                exercise: exercise, 
                onPressed: () => context.push(WorkoutExercisesDetailsPage(
                  exerciseModel: exercise, 
                )),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: exercises.length,
          ),
        ),
      ],
    );
  }
}
