import 'package:flutter/material.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/features/home/top_tab_view/top_tap_view_page.dart';
import 'package:healtho/features/login/physique/widgets/age_selector.dart';
import 'package:healtho/features/login/physique/widgets/height_selector.dart';
import 'package:healtho/features/login/physique/widgets/physique_page_title.dart';
import 'package:healtho/features/login/physique/widgets/weight_selector.dart';

class PhysiquePage extends StatefulWidget {
  const PhysiquePage({super.key, required this.email, required this.name});
  final String email, name;

  @override
  State<PhysiquePage> createState() => _PhysiquePageState();
}

class _PhysiquePageState extends State<PhysiquePage> {
  String selectedAge = '19';
  String selectedHeight = '170 Cm';
  String selectedWeight = '82 KG';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                selectedHeight = '${val['cm']}';
              }),
            ),
            WeightSelector(
              selectedWeight: selectedWeight,
              onChanged: (val) => setState(() => selectedWeight = val),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundButton(
                title: 'Confirm',
                onPressed: () {
                  context.push(TopTapViewPage(
                    age: selectedAge,
                    height: selectedHeight,
                    weight: selectedWeight,
                    name: widget.name,
                    email: widget.email,
                  ));
                },
                isPadding: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
