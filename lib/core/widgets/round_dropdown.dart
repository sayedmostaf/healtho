import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';

class RoundDropdown extends StatelessWidget {
  const RoundDropdown(
      {super.key,
      required this.hintText,
      required this.list,
      this.value,
      this.isPadding = false,
      this.didChange});

  final String hintText;
  final List list;
  final dynamic value;
  final bool isPadding;
  final Function(dynamic)? didChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: isPadding ? 20 : 0),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.textBackground,
        border: Border.all(
          color: AppColors.board,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(hintText),
          isExpanded: true,
          value: value,
          icon: Image.asset(
            AppAssets.downImage,
            width: 15,
          ),
          items: list
              .map(
                (obj) => DropdownMenuItem(
                  value: obj,
                  child: Text(
                    obj['name'] as String? ?? "",
                    style: TextStyle(
                      color: AppColors.primaryText,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: didChange,
        ),
      ),
    );
  }
}
