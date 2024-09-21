import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.radius = 25,
      this.obscureText = false,
      this.right,
      this.keyboardType,
      this.isPadding = false});
  final String hintText;
  final TextEditingController? controller;
  final double radius;
  final bool obscureText;
  final Widget? right;
  final TextInputType? keyboardType;
  final bool isPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: isPadding ? 20 : 0),
      decoration: BoxDecoration(
          color: AppColors.textBackground,
          border: Border.all(
            color: AppColors.board,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(radius)),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: TextStyle(color: AppColors.primaryText, fontSize: 16),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsetsDirectional.symmetric(horizontal: 20),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            suffixIcon: right,
            hintStyle: TextStyle(
              color: AppColors.placeholder,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
