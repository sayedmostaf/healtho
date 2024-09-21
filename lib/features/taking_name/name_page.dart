import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/round_text_field.dart';
import 'package:healtho/features/splash_page/splash_page.dart';
import 'package:healtho/features/taking_goal/goal_page.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Enter your name',
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RoundTextField(hintText: 'i.e Sayed Mostafa'),
            const SizedBox(
              height: 40,
            ),
            RoundButton(
                title: 'NEXT',
                isPadding: false,
                onPressed: () {
                  context.push(const GoalPage());
                }),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
