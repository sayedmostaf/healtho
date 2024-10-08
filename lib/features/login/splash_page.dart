import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/login/on_bording/on_boarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    loadAppPages();
  }

  void loadAppPages() async {
    await Future.delayed(const Duration(seconds: 3));
    loadOnBoardingPage();
  }

  void loadOnBoardingPage() {
    context.push(const OnBoardingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          width: context.width * .65,
        ),
      ),
    );
  }
}
