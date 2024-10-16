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
    return TextFormField(
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'this field is required';
        } else {
          return null;
        }
      },
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: TextStyle(color: AppColors.primaryText, fontSize: 16),
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: AppColors.placeholder,
              width: 2.0,
            ),
          ),
          contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius:const BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: AppColors.placeholder,
              width: 2.0,
            ),
          ),
          hintText: hintText,
          suffixIcon: right,
          hintStyle: TextStyle(
            color: AppColors.placeholder,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
