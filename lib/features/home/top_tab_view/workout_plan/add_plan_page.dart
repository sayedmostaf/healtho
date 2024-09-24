import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/round_dropdown.dart';
import 'package:healtho/core/widgets/round_text_field.dart';

class AddPlanPage extends StatefulWidget {
  const AddPlanPage({super.key});

  @override
  State<AddPlanPage> createState() => _AddPlanPageState();
}

class _AddPlanPageState extends State<AddPlanPage> {
  // State variables to store user input
  String? planName;
  String? selectedGoal;
  String? selectedDuration;
  String? selectedLevel;

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
          'Add Plan',
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
            // Plan Name Input
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: RoundTextField(
                hintText: 'Plan Name',
                radius: 10,
                // onChanged: (value) {
                //   setState(() {
                //     planName = value; // Store the plan name
                //   });
                // },
              ),
            ),
            // Goal Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: 'Goal',
                list: const [
                  {'name': 'Lose Weight'},
                  {'name': 'Build Muscle'},
                  {'name': 'Maintain Fitness'},
                ],
                value: selectedGoal, // Set the initial value
                didChange: (value) {
                  setState(() {
                    selectedGoal = value['name']; // Store the selected goal
                  });
                },
              ),
            ),
            // Duration Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: 'Duration',
                list: const [
                  {'name': '10 min'},
                  {'name': '20 min'},
                  {'name': '30 min'},
                ],
                value: selectedDuration, // Set the initial value
                didChange: (value) {
                  setState(() {
                    selectedDuration =
                        value['name']; // Store the selected duration
                  });
                },
              ),
            ),
            // Level Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundDropdown(
                hintText: 'Choose Level',
                list:const [
                  {'name': 'Beginner'},
                  {'name': 'Intermediate'},
                  {'name': 'Advanced'},
                ],
                value: selectedLevel, // Set the initial value
                didChange: (value) {
                  setState(() {
                    selectedLevel = value['name']; // Store the selected level
                  });
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundButton(
              title: 'Add Plan',
              onPressed: () {
                if (planName != null &&
                    selectedGoal != null &&
                    selectedDuration != null &&
                    selectedLevel != null) {
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please fill out all fields'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
