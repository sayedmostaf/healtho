import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/notifications/notification_page.dart';
import 'package:healtho/features/home/reminder/reminder_page.dart';
import 'package:healtho/features/home/settings/setting_profile_page.dart';
import 'package:healtho/features/home/settings/widgets/setting_row.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        centerTitle: false,
        leading: Container(),
        title: const Text(
          'Setting',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SettingRow(
            title: 'Profile',
            icon: AppAssets.userPlaceholderImage,
            isIconCircle: true,
            onPressed: () {
              context.push(const SettingProfilePage());
            },
          ),
          SettingRow(
              title: "Language options",
              icon: AppAssets.languageImage,
              value: "Eng",
              onPressed: () {}),
          SettingRow(
              title: "Health Data",
              icon: AppAssets.dataImage,
              value: "",
              onPressed: () {}),
          SettingRow(
              title: "Notification",
              icon: AppAssets.notificationImage,
              value: "On",
              onPressed: () {
                context.push(const NotificationPage());
              }),
          SettingRow(
            title: "Refer a Friend",
            icon: AppAssets.shareImage,
            value: "",
            onPressed: () {},
          ),
          SettingRow(
            title: "Feedback",
            icon: AppAssets.feedbackImage,
            value: "",
            onPressed: () {},
          ),
          SettingRow(
            title: "Rate Us",
            icon: AppAssets.ratingImage,
            value: "",
            onPressed: () {},
          ),
          SettingRow(
              title: "Reminder",
              icon: AppAssets.ratingImage,
              value: "",
              onPressed: () {
                context.push(const ReminderPage());
              }),
          SettingRow(
            title: "Log Out",
            icon: AppAssets.logoutImage,
            value: "",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
