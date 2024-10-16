import 'package:flutter/material.dart';
import 'package:healtho/core/utils/models/exercise_model.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_app_bar.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_body.dart';

class ExercisesNamePage extends StatefulWidget {
  final Map<String, dynamic> exerciseData; 

  const ExercisesNamePage({super.key, required this.exerciseData});

  @override
  State<ExercisesNamePage> createState() => _ExercisesNamePageState();
}

class _ExercisesNamePageState extends State<ExercisesNamePage> {
  late List<ExerciseModel> exercises;

  @override
  void initState() {
    super.initState();
    exercises = (widget.exerciseData['exercises'] as List)
        .map<ExerciseModel>(
            (exerciseJson) => ExerciseModel.fromJson(exerciseJson))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ExerciseAppbar(
          title: widget.exerciseData['title'],
        ),
        body: ExerciseBody(
          exercises: exercises,
        ));
  }
}
