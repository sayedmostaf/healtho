import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/features/on_bording/widgets/on_boarding_appbar.dart';
import 'package:healtho/features/on_bording/widgets/on_boarding_content.dart';
import 'package:healtho/features/on_bording/widgets/on_boarding_indicator.dart';
import 'package:healtho/features/sign_up/sign_up_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int selectPage = 0;
  PageController controller = PageController();

  List<Map<String, String>> pages = [
    {
      'title': 'Exercises',
      'subTitle': 'To Your Personalized Profile',
      'image': AppAssets.exerciseImage,
    },
    {
      'title': 'Keep Eye On Health\nTracking',
      'subTitle': 'Log & reminder your activites',
      'image': AppAssets.healthTrackingImage,
    },
    {
      'title': 'Check Your Progress',
      'subTitle': 'An trackting calender',
      'image': AppAssets.progressImage,
    },
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: const OnBoardingAppbar(),
        body: Stack(alignment: Alignment.center, children: [
          PageView.builder(
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return OnBoardingContent(pageObject: pages[index]);
              }),
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 5),
                OnboardingIndicator(pages: pages, selectedPage: selectPage),
                const Spacer(),
                RoundButton(
                  title: "Next",
                  onPressed: () {
                    final nextPage = controller.page?.round() ?? 0;
                    if (nextPage >= 2) {
                      context.push(const SignUpPage());
                    } else {
                      controller.animateToPage(
                        nextPage + 1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
