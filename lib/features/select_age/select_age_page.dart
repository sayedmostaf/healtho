import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class SelectAgePage extends StatefulWidget {
  const SelectAgePage({super.key, required this.didChange});
  final ValueChanged<String> didChange;

  @override
  State<SelectAgePage> createState() => _SelectAgePageState();
}

class _SelectAgePageState extends State<SelectAgePage> {
  List valueArr = [];

  @override
  void initState() {
    super.initState();

    for (var i = 1; i < 120; i++) {
      valueArr.add({"name": "$i", "value": i});
    }
  }

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Select your Age",
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 32,
                      onSelectedItemChanged: (value) {
                        widget.didChange(valueArr[value]["name"]);
                      },
                      children: List<Widget>.generate(valueArr.length, (index) {
                        var obj = valueArr[index];
                        return Text("${obj["name"]}");
                      }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
