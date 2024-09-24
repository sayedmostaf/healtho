import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class WeekDetailPage extends StatefulWidget {
  const WeekDetailPage({super.key});

  @override
  State<WeekDetailPage> createState() => _WeekDetailPageState();
}

class _WeekDetailPageState extends State<WeekDetailPage> {
  List daysData = [
    {
      "name": "Mon",
      "total": "10",
      "major": "7",
      "minor": "3",
      "is_rest": false
    },
    {
      "name": "Tue",
      "total": "10",
      "major": "7",
      "minor": "3",
      "is_rest": false
    },
    {
      "name": "Wed",
      "total": "0",
      "major": "0",
      "minor": "0",
      "is_rest": true,
    },
    {
      "name": "Thu",
      "total": "10",
      "major": "7",
      "minor": "3",
      "is_rest": false
    },
    {
      "name": "Fri",
      "total": "10",
      "major": "7",
      "minor": "3",
      "is_rest": false
    },
    {
      "name": "Sat",
      "total": "0",
      "major": "0",
      "minor": "0",
      "is_rest": true,
    },
    {
      "name": "Sat",
      "total": "10",
      "major": "7",
      "minor": "3",
      "is_rest": false
    },
  ];
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
          'Week',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          var object = daysData[index] as Map? ?? {};
          return WeekDayExerciseRow(
              object: object,
              onPressed: () {
                context.push(const DayExercisePage());
              });
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: daysData.length,
      ),
    );
  }
}
