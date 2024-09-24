import 'package:flutter/material.dart';
import 'package:healtho/features/home/settings/widgets/profile_app_bar.dart';
import 'package:healtho/features/home/settings/widgets/profile_body.dart';
class SettingProfilePage extends StatefulWidget {
  const SettingProfilePage({super.key});

  @override
  State<SettingProfilePage> createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  ProfileAppbar(),
      body: ProfileBody(),
    );
  }
}
