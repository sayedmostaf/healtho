import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class HealthTipAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HealthTipAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Image.asset(
          AppAssets.backImage,
          width: 20,
          height: 20,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.secondary,
      centerTitle: false,
      title: const Text(
        'Health Tip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
