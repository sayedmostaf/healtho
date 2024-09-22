import 'package:flutter/material.dart';
import 'package:healtho/core/widgets/round_title_value_button.dart';

class LevelSelector extends StatelessWidget {
  final String selectedLevel;
  final ValueChanged<String> onChanged;

  const LevelSelector({
    required this.selectedLevel,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundTitleValueButton(
      title: 'Level',
      value: selectedLevel,
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          elevation: 0,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return SelectLevelPage(didChange: onChanged);
          },
        );
      },
    );
  }
}
