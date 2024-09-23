import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/features/home/notifications/widgets/notification_row.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List notificationData = [
    "New Exercises and Plans Updated",
    "You Just Consulted  with our Nutritioni..",
    "Your Mobile Number is Updated",
    "Health Tips - why Breathing is important",
    "You Just Complete the Pushups Ch...",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        centerTitle: false,
        leading: Container(),
        leadingWidth: 20,
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return NotificationRow(
              title: notificationData[index], onPressed: () {});
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: notificationData.length,
      ),
    );
  }
}
