import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/round_text_field.dart';
import 'package:healtho/features/otp/otp_page.dart';
import 'package:healtho/features/splash_page/splash_page.dart';

class MobileNumberPage extends StatefulWidget {
  const MobileNumberPage({super.key});

  @override
  State<MobileNumberPage> createState() => _MobileNumberPageState();
}

class _MobileNumberPageState extends State<MobileNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                'Enter mobile number',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const RoundTextField(
                hintText: 'i.e +20 1091706101',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 40,
              ),
              RoundButton(
                title: 'VERIFY',
                onPressed: () {
                  context.push(const OTPPage());
                },
                isPadding: false,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
