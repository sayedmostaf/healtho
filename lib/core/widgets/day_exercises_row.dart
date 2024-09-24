import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';

class DayExercisesRow extends StatelessWidget {
  const DayExercisesRow(
      {super.key, required this.object, required this.onPressed});
  final Map object;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.textBackground,
          border: Border.all(color: AppColors.board, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      object['image'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          object['name'],
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                'Sets',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                object["sets"],
                                style: TextStyle(
                                  color: AppColors.placeholder,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                'Reps',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                object["reps"],
                                style: TextStyle(
                                  color: AppColors.placeholder,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                'Reset',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                object["reset"],
                                style: TextStyle(
                                  color: AppColors.placeholder,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    AppAssets.nextImage,
                    width: 12,
                    color: AppColors.placeholder,
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.board,
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    object['isComplete']
                        ? AppAssets.checkTickImage
                        : AppAssets.unCheckTickImage,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Mark as completed',
                    style: TextStyle(
                      color: object['isComplete']
                          ? const Color(0xff27AE60)
                          : AppColors.placeholder,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
