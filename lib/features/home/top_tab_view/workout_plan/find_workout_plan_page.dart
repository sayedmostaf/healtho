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
  String? selectedGoal;
  String? selectedLevel;
  String? selectedWeeks;
  String? selectedDays;

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: "Choose Goal",
                list: const[
                  {"name": "Lose Weight"},
                  {"name": "Build Muscle"},
                ],
                value: selectedGoal, // Set the initial value
                didChange: (value) {
                  setState(() {
                    selectedGoal = value['name']; // Update the selected value
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: "Choose Level",
                list: const [
                  {"name": "Beginner"},
                  {"name": "Intermediate"},
                ],
                value: selectedLevel,
                didChange: (value) {
                  setState(() {
                    selectedLevel = value['name'];
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: "No of weeks",
                list: const [
                  {"name": "1"},
                  {"name": "2"},
                ],
                value: selectedWeeks,
                didChange: (value) {
                  setState(() {
                    selectedWeeks = value['name'];
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: "Days per week",
                list: const [
                  {"name": "3"},
                  {"name": "5"},
                ],
                value: selectedDays,
                didChange: (value) {
                  setState(() {
                    selectedDays = value['name'];
                  });
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundButton(
              title: 'Find Workout Plan',
              onPressed: () {
              },
            )
          ],
        ),
      ),
    );
  }
}
