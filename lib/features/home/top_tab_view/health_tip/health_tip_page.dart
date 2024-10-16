import 'package:flutter/material.dart';
import 'package:healtho/core/utils/data/helthy_tip.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/health_tips_details_page.dart';
import 'package:healtho/features/home/top_tab_view/health_tip/widgets/health_tip_row.dart';

class HealthTipPage extends StatefulWidget {
  const HealthTipPage({super.key});

  @override
  State<HealthTipPage> createState() => _HealthTipPageState();
}

class _HealthTipPageState extends State<HealthTipPage> {
  List data = HealthTips.getTips();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          var obj = data[index];
          return HealthTipRow(
              object: obj,
              onPressed: () {
                context.push(HealthTipsDetailsPage(
                  healthTip: obj,
                ));
              });
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
