import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class ExerciseAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ExerciseAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondary,
      centerTitle: false,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
