import 'package:flutter/material.dart';
import 'package:healtho/features/home/profile/widgets/setting_row.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody(
      {super.key,
      required this.age,
      required this.height,
      required this.weight,
      required this.name,
      required this.email});
  final String age, height, weight, name, email;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        SettingRow(
          title: "Name",
          value: name.split('@')[0],
          onPressed: () {},
        ),
        SettingRow(
          title: "Email",
          value: email.substring(0, email.length - 9),
          onPressed: () {},
        ),
        SettingRow(
          title: "Age",
          value: '$age years old',
          onPressed: () {},
        ),
        SettingRow(
          title: "Height",
          value: height,
          onPressed: () {},
        ),
        SettingRow(
          title: "Weight",
          value: weight,
          onPressed: () {},
        ),
      ],
    );
  }
}
