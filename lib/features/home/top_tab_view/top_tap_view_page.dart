import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/widgets/top_tab_button.dart';
import 'package:healtho/features/home/profile/setting_profile_page.dart';
import 'package:healtho/features/home/top_tab_view/exercises/exercise_tab_page.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/health_tip_page.dart';

class TopTapViewPage extends StatefulWidget {
  const TopTapViewPage({
    super.key,
    required this.age,
    required this.height,
    required this.weight,
    required this.name,
    required this.email,
  });

  final String age, height, weight, name, email;

  @override
  State<TopTapViewPage> createState() => _TopTapViewPageState();
}

class _TopTapViewPageState extends State<TopTapViewPage>
    with SingleTickerProviderStateMixin {
  var tapsPages = [
    "Health Tips",
    "Exercises",
  ];

  int selectedTab = 0;
  int _selectedIndex = 0;
  TabController? controller;

  static const List<Widget> _topTabPages = <Widget>[
    HealthTipPage(),
    ExercisesPage(),
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
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
    List<Widget> _bottomNavPages() {
      return [
        SettingProfilePage(
          age: widget.age,
          height: widget.height,
          weight: widget.weight,
          name: widget.name,
          email: widget.email,
        ),
      ];
    }

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
          : _bottomNavPages()[_selectedIndex - 1],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
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
