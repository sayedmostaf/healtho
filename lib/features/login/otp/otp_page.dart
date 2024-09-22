import 'package:flutter/material.dart';
import 'package:healtho/features/login/otp/widgets/otp_footer_option.dart';
import 'package:healtho/features/login/otp/widgets/otp_input_field.dart';
import 'package:healtho/features/login/otp/widgets/otp_intro_text.dart';
import 'package:healtho/features/login/otp/widgets/otp_verfiy_button.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  OtpFieldControllerV2 textOTP = OtpFieldControllerV2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const IntroText(),
              const SizedBox(height: 35),
              OTPInputField(controller: textOTP),
              const SizedBox(height: 35),
              const VerifyButton(),
              const FooterOptions(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
