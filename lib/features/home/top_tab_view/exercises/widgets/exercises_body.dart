import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/exercises/widgets/exercises_row.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_exercises_page.dart';

class ExerciseBody extends StatelessWidget {
  const ExerciseBody({super.key, required this.data});
  final List data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 0.5),
          width: double.maxFinite,
          color: AppColors.secondary,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownButtonHideUnderline(
                  child: DropdownButton(
                icon: Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.downWhiteImage,
                    width: 15,
                  ),
                ),
                hint: const Text(
                  'Select Level',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                items: ["Level 1", "Level 2"]
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: TextStyle(
                            color: AppColors.buttonPrimaryText,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )))
                    .toList(),
                onChanged: (value) {},
              ))
            ],
          ),
        ),
        Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  var obj = data[index] as Map? ?? {};
                  return ExercisesRow(
                    object: obj,
                    onPressed: () =>
                        context.push(const WorkoutExercisesDetailsPage()),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                itemCount: data.length))
      ],
    );
  }
}
