import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/features/login/google_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Spacer(
              flex: 4,
            ),
            Image.asset(
              AppAssets.logo,
              width: context.width * 0.7,
            ),
            const SizedBox(
              height: 180,
            ),
            RoundButton(
                title: 'Google',
                type: RoundButtonType.line,
                isPadding: false,
                image: AppAssets.googleImage,
                onPressed: () {
                  context.push(const GooglePage());
                }),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
