import 'package:flutter/material.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/features/physique/widgets/age_selector.dart';
import 'package:healtho/features/physique/widgets/height_selector.dart';
import 'package:healtho/features/physique/widgets/level_selector.dart';
import 'package:healtho/features/physique/widgets/physique_page_title.dart';
import 'package:healtho/features/physique/widgets/weight_selector.dart';
import 'package:healtho/features/splash_page/splash_page.dart';

class PhysiquePage extends StatefulWidget {
  const PhysiquePage({super.key});

  @override
  State<PhysiquePage> createState() => _PhysiquePageState();
}

class _PhysiquePageState extends State<PhysiquePage> {
  String selectedAge = '19';
  String selectedHeight = '6 Ft 4 Inch';
  String selectedWeight = '82 KG';
  String selectedLevel = 'Beginner';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const PageTitle(),
              const SizedBox(height: 40),
              AgeSelector(
                selectedAge: selectedAge,
                onChanged: (val) => setState(() => selectedAge = val),
              ),
              HeightSelector(
                selectedHeight: selectedHeight,
                onChanged: (val) => setState(() {
                  selectedHeight = '${val['ft']} ${val['inch']}';
                }),
              ),
              WeightSelector(
                selectedWeight: selectedWeight,
                onChanged: (val) => setState(() => selectedWeight = val),
              ),
              LevelSelector(
                selectedLevel: selectedLevel,
                onChanged: (val) => setState(() => selectedLevel = val),
              ),
              const SizedBox(height: 40),
              RoundButton(
                title: 'Confirm',
                onPressed: () {
                  context.push(const SplashPage());
                },
                isPadding: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
