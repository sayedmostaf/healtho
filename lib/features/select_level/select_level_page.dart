import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/radio_button.dart';

class SelectLevelPage extends StatefulWidget {
  final ValueChanged<String> didChange;
  const SelectLevelPage({super.key, required this.didChange});

  @override
  State<SelectLevelPage> createState() => _SelectLevelPageState();
}

class _SelectLevelPageState extends State<SelectLevelPage> {
  int selectType = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      color: Colors.black45,
      alignment: Alignment.center,
      child: Container(
        width: context.width * 0.6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Select your Level",
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            RadioButton(
                title: "Beginner",
                isSelect: selectType == 0,
                onPressed: () {
                  setState(() {
                    selectType = 0;
                  });
                  widget.didChange("Beginner");
                }),
            RadioButton(
                title: "Intermediate",
                isSelect: selectType == 1,
                onPressed: () {
                  setState(() {
                    selectType = 1;
                  });
                  widget.didChange("Intermediate");
                }),
            RadioButton(
                title: "Advance",
                isSelect: selectType == 2,
                onPressed: () {
                  setState(() {
                    selectType = 2;
                  });
                  widget.didChange("Advance");
                })
          ],
        ),
      ),
    );
  }
}
