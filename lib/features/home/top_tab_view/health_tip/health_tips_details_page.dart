import 'package:flutter/material.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_app_bar.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_body.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_floating_action_button.dart';

class HealthTipsDetailsPage extends StatefulWidget {
  const HealthTipsDetailsPage({super.key});

  @override
  State<HealthTipsDetailsPage> createState() => _HealthTipsDetailsPageState();
}

class _HealthTipsDetailsPageState extends State<HealthTipsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HealthTipAppBar(),
      body: HealthTipBody(),
      floatingActionButton: HealthTipFloatingActionButton(),
    );
  }
}
