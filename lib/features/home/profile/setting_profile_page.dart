import 'package:flutter/material.dart';
import 'package:healtho/features/home/profile/widgets/profile_app_bar.dart';
import 'package:healtho/features/home/profile/widgets/profile_body.dart';

class SettingProfilePage extends StatefulWidget {
  const SettingProfilePage(
      {super.key,
      required this.age,
      required this.height,
      required this.weight, required this.name, required this.email});
  final String age, height, weight,name,email;
  @override
  State<SettingProfilePage> createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppbar(),
      body: ProfileBody(
        age: widget.age,
        height: widget.height,
        weight: widget.weight,
        name: widget.name,
        email: widget.email,
      ),
    );
  }
}
