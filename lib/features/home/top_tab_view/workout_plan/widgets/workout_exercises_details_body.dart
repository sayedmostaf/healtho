import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class WorkoutExercisesDetailsBody extends StatelessWidget {
  const WorkoutExercisesDetailsBody({super.key, required this.imagesData});
  final List imagesData;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.width * .4 + 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagesData[index],
                    width: context.width * 0.7,
                    height: context.width * 0.4,
                    fit: BoxFit.cover,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: imagesData.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bench Press",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "1) Lie back on a flat bench. Using a medium width grip, lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position. ",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "2) From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "3) After a brief pause, push the bar back to the starting position as you breathe out.",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Equipment Required",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Barbell, Bench , Plate, Lock",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Target Muscle",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Chest, Shoulder, Triceps",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
