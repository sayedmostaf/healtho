import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/trainer/trainer_profile_page.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_row.dart';

class TrainerTabPage extends StatefulWidget {
  const TrainerTabPage({super.key});

  @override
  State<TrainerTabPage> createState() => _TrainerTabPageState();
}

class _TrainerTabPageState extends State<TrainerTabPage> {
  List data = [
    {
      "name": "Sayed Mostafa",
      "detail": "Fitness and Physiotheraphy",
      "image": AppAssets.trainerOneImage,
      "rate": 4.0,
      "location": "Assuit"
    },
    {
      "name": "Shahd Ibrahim ",
      "detail": "Weight Loss",
      "image": AppAssets.trainerTwoImage,
      "rate": 4.0,
      "location": "Cairo"
    },
    {
      "name": "Yassa Adli",
      "detail": "Fitness and Physiotheraphy",
      "image": AppAssets.trainerThreeImage,
      "rate": 3.5,
      "location": "Sohag"
    },
    {
      "name": "Antonious fekry",
      "detail": "power gaining",
      "image": AppAssets.trainerFourImage,
      "rate": 3.0,
      "location": "Aswan"
    },
    {
      "name": "Abdullah Ahmed",
      "detail": "Fitness and Physiotheraphy",
      "image": AppAssets.trainerFiveImage,
      "rate": 2.0,
      "location": "Alex"
    },
    {
      "name": "Mohamed Mostafa",
      "detail": "Mass gain",
      "image": AppAssets.trainerSixImage,
      "rate": 1.5,
      "location": "Giza"
    },
    {
      "name": "Sara Ali",
      "detail": "Fitness and Physiotheraphy",
      "image": AppAssets.trainerSevenImage,
      "rate": 3.0,
      "location": "Minya"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return TrainerRow(
              object: data[index],
              onPressed: () {
                context.push(const TrainerProfilePage());
              });
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: data.length,
      ),
    );
  }
}
