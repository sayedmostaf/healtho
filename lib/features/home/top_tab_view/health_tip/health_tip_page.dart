import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/health_tips_details_page.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_row.dart';

class HealthTipPage extends StatefulWidget {
  const HealthTipPage({super.key});

  @override
  State<HealthTipPage> createState() => _HealthTipPageState();
}

class _HealthTipPageState extends State<HealthTipPage> {
  List data = [
    {
      "title": "A diet without exercise is useless. ",
      "subTitle":
          "Interval training is a form of exercise in which you. alternate between  or more exercise..",
      "image": AppAssets.tipOneImage,
    },
    {
      "title": "Garlic as fresh and sweet as baby's breath. ",
      "subTitle":
          "Garlic is the plant in the onion family that's grown alternate between  or more exercise..",
      "image": AppAssets.tipTwoImage,
    },
    {
      "title": "Garlic as fresh and sweet as baby's breath. ",
      "subTitle":
          "Garlic is the plant in the onion family that's grown alternate between  or more exercise..",
      "image": AppAssets.tipThreeImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          var obj = data[index] as Map? ?? {};
          return HealthTipRow(
              object: obj,
              onPressed: () {
                context.push(const HealthTipsDetailsPage());
              });
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
