import 'package:flutter/material.dart';
import 'package:healtho/core/widgets/round_title_value_button.dart';

class WeightSelector extends StatelessWidget {
  final String selectedWeight;
  final ValueChanged<String> onChanged;

  const WeightSelector({
    required this.selectedWeight,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundTitleValueButton(
      title: 'Weight',
      value: selectedWeight,
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          elevation: 0,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return SelectWeightPage(didChange: onChanged);
          },
        );
      },
    );
  }
}