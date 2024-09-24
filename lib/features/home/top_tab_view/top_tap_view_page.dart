import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/widgets/top_tab_button.dart';
import 'package:healtho/features/home/notifications/notification_page.dart';
import 'package:healtho/features/home/reminder/reminder_page.dart';
import 'package:healtho/features/home/settings/setting_page.dart';
import 'package:healtho/features/home/settings/setting_profile_page.dart';
import 'package:healtho/features/home/top_tab_view/challenges_tab_screen.dart';
import 'package:healtho/features/home/top_tab_view/dietician_tab_page.dart';
import 'package:healtho/features/home/top_tab_view/exercises/exercise_tab_page.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/health_tip_page.dart';
import 'package:healtho/features/home/top_tab_view/trainer/trainer_profile_page.dart';
import 'package:healtho/features/home/top_tab_view/trainer/trainer_tab_page.dart';
import 'package:healtho/features/home/top_tab_view/workout_plan/workout_plan_page.dart';

class TopTapViewPage extends StatefulWidget {
  const TopTapViewPage({super.key});

  @override
  State<TopTapViewPage> createState() => _TopTapViewPageState();
}

class _TopTapViewPageState extends State<TopTapViewPage>
    with SingleTickerProviderStateMixin {
  var tapsPages = [
    "Health Tips",
    "Exercises",
    "Workout Plan",
    "Challenges",
    "Trainers",
    "Dietician",
  ];

  int selectedTab = 0;
  int _selectedIndex = 0;
  TabController? controller;

  static const List<Widget> _topTabPages = <Widget>[
    HealthTipPage(),
    ExercisesPage(),
    WorkoutPlanPage(),
    ChallengesTabPage(),
    TrainerTabPage(),
    DieticianTabPage(),
  ];

  static const List<Widget> _bottomNavPages = <Widget>[
    NotificationPage(),
    ReminderPage(),
    SettingPage(),
    SettingProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
    controller?.addListener(() {
      setState(() {
        selectedTab = controller?.index.round() ?? 0;
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        centerTitle: false,
        leading: Container(),
        leadingWidth: 20,
        title: const Text(
          "Healtho",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: _selectedIndex == 0
          ? Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0.5),
                  color: AppColors.secondary,
                  height: 40,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: tapsPages.map((name) {
                          var index = tapsPages.indexOf(name);
                          return TopTabButton(
                            title: name,
                            isSelect: selectedTab == index,
                            onPressed: () {
                              setState(() {
                                selectedTab = index;
                                controller?.animateTo(index);
                              });
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: _topTabPages,
                  ),
                ),
              ],
            )
          : _bottomNavPages[_selectedIndex - 1],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Reminder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
