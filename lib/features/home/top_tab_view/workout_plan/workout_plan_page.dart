import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/icon_title_subtitle_button.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/secrtion_button.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/add_plan_page.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/find_workout_plan_page.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_details_page.dart';

class WorkoutPlanPage extends StatefulWidget {
  const WorkoutPlanPage({super.key});

  @override
  State<WorkoutPlanPage> createState() => _WorkoutPlanPageState();
}

class _WorkoutPlanPageState extends State<WorkoutPlanPage> {
  List musclesData = [
    {
      "name": AppAssets.workPlanOneImage,
    },
    {
      "name": AppAssets.workPlanTwoImage,
    },
  ];
  List gainData = [
    {
      "name": AppAssets.workPlanThreeImage,
    },
    {
      "name": AppAssets.workPlanFourImage,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Column(
            children: [
              IconTitleSubtitleButton(
                  title: "Find a Workout Plan",
                  subTitle:
                      "Perfect Workout plan that fulfill your fitness goal",
                  icon: AppAssets.searchCircleImage,
                  onPressed: () {
                    context.push(const FindWorkoutPlanPage());
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: RoundButton(title: "My Plan", onPressed: () {}),
              ),
              IconTitleSubtitleButton(
                  title: "Create New Plan",
                  subTitle: "Customise workout plans as per your Need",
                  icon: AppAssets.addBigImage,
                  onPressed: () {
                    context.push(const AddPlanPage());
                  }),
              SecrtionButton(
                title: "Muscle Building",
                onPressed: () {},
              ),
              SizedBox(
                height: (context.width * 35) + 16,
                child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var object = musclesData[index] as Map? ?? {};
                    return InkWell(
                      onTap: () {
                        context.push(const WorkoutDetailsPage());
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          object['name'],
                          width: context.width * .6,
                          height: context.width * .35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: musclesData.length,
                ),
              ),
              SecrtionButton(
                title: "Gain Strength",
                onPressed: () {},
              ),
              SizedBox(
                height: (context.width * 0.35) + 16,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  itemBuilder: (context, index) {
                    var obj = gainData[index] as Map? ?? {};
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        obj["name"],
                        width: context.width * 0.6,
                        height: context.width * 0.35,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: gainData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
