import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/round_dropdown.dart';

class FindWorkoutPlanPage extends StatefulWidget {
  const FindWorkoutPlanPage({super.key});

  @override
  State<FindWorkoutPlanPage> createState() => _FindWorkoutPlanPageState();
}

class _FindWorkoutPlanPageState extends State<FindWorkoutPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Find a workout plan",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: "Choose Goal",
                list: [
                  {"name": "Goal"},
                  {"name": "Goal"},
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(hintText: "Choose Level", list: [
                {"name": "Level 1"},
                {"name": "Level 2"},
              ]),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(hintText: "No of weeks", list: [
                {"name": "1"},
                {"name": "2"},
              ]),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(hintText: "Days per week", list: [
                {"name": "1"},
                {"name": "2"},
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RoundButton(
                title: 'Find Workout Plan',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
