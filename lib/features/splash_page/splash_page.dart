import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
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
