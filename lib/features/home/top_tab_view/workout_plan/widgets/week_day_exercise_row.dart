import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';

class WeekDayExerciseRow extends StatelessWidget {
  const WeekDayExerciseRow(
      {super.key, required this.object, required this.onPressed});
  final Map object;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.textBackground,
          border: Border.all(
            color: AppColors.board,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                object['name'],
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: (object['is_rest'] as bool? ?? false)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'REST',
                          style: TextStyle(
                            color: AppColors.placeholder,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "For The Muscle Recovery",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Total Exercise',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              object['total'],
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Major Exercise',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              object['major'],
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Minor Exercise',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              object['minor'],
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
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
              width: 10,
              color: AppColors.placeholder,
            )
          ],
        ),
      ),
    );
  }
}
