import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/round_select_button.dart';
import 'package:healtho/features/login/physique/physique_page.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  String selectName = '';
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
                'Select your goal',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: ['Fat Loss', 'Weight Gain', 'Muscle Gain', 'others']
                    .map((name) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: RoundSelectButton(
                        title: name,
                        type: RoundButtonType.line,
                        isPadding: false,
                        image: selectName == name
                            ? AppAssets.radioSelectedImage
                            : AppAssets.radioUnSelectedImage,
                        onPressed: () {
                          setState(() {
                            selectName = name;
                          });
                        }),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  title: 'DONE',
                  isPadding: false,
                  onPressed: () {
                    context.push(const PhysiquePage());
                  }),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
