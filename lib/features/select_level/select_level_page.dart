import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/radio_button.dart';

class SelectLevelPage extends StatefulWidget {
  const SelectLevelPage({super.key, required this.didChange});
  final ValueChanged<String> didChange;
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
        width: context.width * .6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Select your level',
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
                title: 'Beginner',
                isSelect: selectType == 0,
                onPressed: () {
                  setState(() {
                    selectType = 0;
                  });
                  widget.didChange("Beginner");
                }),
            RadioButton(
                title: 'Intermediage',
                isSelect: selectType == 1,
                onPressed: () {
                  setState(() {
                    selectType = 1;
                  });
                  widget.didChange("Intermediage");
                }),
            RadioButton(
                title: 'Advance',
                isSelect: selectType == 2,
                onPressed: () {
                  setState(() {
                    selectType = 2;
                  });
                  widget.didChange("Advance");
                }),
          ],
        ),
      ),
    );
  }
}
