import 'package:flutter/material.dart';
import 'package:healtho/core/widgets/round_title_value_button.dart';
import 'package:healtho/features/login/select_age_page.dart';

class AgeSelector extends StatelessWidget {
  final String selectedAge;
  final ValueChanged<String> onChanged;

  const AgeSelector({
    required this.selectedAge,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundTitleValueButton(
      title: 'Age',
      value: '$selectedAge Yrs',
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          elevation: 0,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return SelectAgePage(didChange: onChanged);
          },
        );
      },
    );
  }
}
