import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class TrainerAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TrainerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Image.asset(
          AppAssets.backImage,
          width: 18,
          height: 18,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}