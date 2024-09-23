import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class ExercisesCell extends StatelessWidget {
  const ExercisesCell(
      {super.key, required this.object, required this.onPressed});
  final Map object;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.textBackground,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 1)]),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                object['image'],
                width: double.maxFinite,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    object['title'],
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.buttonPrimaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    object['subTitle'],
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.buttonPrimaryText,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
