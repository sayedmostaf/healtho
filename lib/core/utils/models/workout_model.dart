import 'package:healtho/core/utils/models/exercise_model.dart';

class Workout {
  final String title;
  final List<ExerciseModel> exercises;
  Workout({required this.title, required this.exercises});
  factory Workout.fromJson(Map<String, dynamic> json) {
    var exerciseList = json['exercises'] as List;
    List<ExerciseModel> exerciseObjects = exerciseList
        .map((exercise) => ExerciseModel.fromJson(exercise))
        .toList();

    return Workout(
      title: json['title'] as String,
      exercises: exerciseObjects,
    );
  }
}
