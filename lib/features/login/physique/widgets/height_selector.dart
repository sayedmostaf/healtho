import 'package:flutter/material.dart';
import 'package:healtho/core/widgets/round_title_value_button.dart';
import 'package:healtho/features/login/select_height/select_height_page.dart';

class HeightSelector extends StatelessWidget {
  final String selectedHeight;
  final ValueChanged<Map<String, String>> onChanged;

  const HeightSelector({
    required this.selectedHeight,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundTitleValueButton(
      title: 'Height',
      value: selectedHeight,
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          elevation: 0,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return SelectHeightPage(didChange: onChanged);
          },
        );
      },
    );
  }
}