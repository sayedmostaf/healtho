import 'package:flutter/material.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_app_bar.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_body.dart';

class HealthTipsDetailsPage extends StatefulWidget {
  final Map<String, dynamic> healthTip; 

  const HealthTipsDetailsPage({super.key, required this.healthTip});

  @override
  State<HealthTipsDetailsPage> createState() => _HealthTipsDetailsPageState();
}

class _HealthTipsDetailsPageState extends State<HealthTipsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HealthTipAppBar(),
      body: HealthTipBody(
        title: widget.healthTip['title'], 
        image: widget.healthTip['photo'], 
        paragraphs:
            widget.healthTip['long_description'], 
      ),
    );
  }
}
