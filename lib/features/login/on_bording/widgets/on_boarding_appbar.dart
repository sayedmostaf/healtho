import 'package:flutter/material.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/features/login/sign_up/sign_up_page.dart';

class OnBoardingAppbar extends StatelessWidget implements PreferredSizeWidget {
  const OnBoardingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          alignment: Alignment.center,
          child: RoundButton(
            title: "Skip",
            onPressed: () {
              context.push(const SignUpPage());
            },
            height: 30,
            fontSize: 12,
            width: 70,
            fontWeight: FontWeight.w300,
            type: RoundButtonType.line,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // 56
}
