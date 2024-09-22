import 'package:flutter/material.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/features/login/taking_name/name_page.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundButton(
      title: 'VERIFY',
      onPressed: () {
        context.push(const NamePage());
      },
    );
  }
}
