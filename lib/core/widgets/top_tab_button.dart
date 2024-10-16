import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class TopTabButton extends StatelessWidget {
  const TopTabButton(
      {super.key,
      required this.title,
      required this.isSelect,
      required this.onPressed});
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 2,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelect ? AppColors.primary : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: isSelect ? AppColors.primary : Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
