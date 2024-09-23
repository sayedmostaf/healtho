import 'package:flutter/material.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_app_bar.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_body.dart';

class TrainerProfilePage extends StatefulWidget {
  const TrainerProfilePage({super.key, this.isTrainer = true});
  final bool isTrainer;
  @override
  State<TrainerProfilePage> createState() => _TrainerProfilePageState();
}

class _TrainerProfilePageState extends State<TrainerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TrainerAppbar(),
      body: TrainerBody(
        isTrainer: widget.isTrainer,
      ),
    );
  }
}
