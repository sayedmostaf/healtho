import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class ExercisesRow extends StatelessWidget {
  const ExercisesRow(
      {super.key, required this.object, required this.onPressed});
  final Map object;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.textBackground,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                aspectRatio: 2,
                child: Image.asset(
                  object['image'],
                  width: double.maxFinite,
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  width: context.width * .4,
                  height: 45,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(30),
                      )),
                  alignment: Alignment.center,
                  child: Text(
                    object['title'],
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.buttonPrimaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 40,
                    child: Image.asset(
                      AppAssets.favWhiteImage,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 40,
                    child: Image.asset(
                      AppAssets.shareWhiteImage,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
