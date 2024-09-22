import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';

class SelectHeightPage extends StatefulWidget {
  const SelectHeightPage({super.key, required this.didChange});
  final ValueChanged<Map<String, String>> didChange;

  @override
  State<SelectHeightPage> createState() => _SelectHeightPageState();
}

class _SelectHeightPageState extends State<SelectHeightPage> {
  List valueFt = [];
  List valueInch = [];

  int selectFt = 0;
  int selectInch = 0;

  @override
  void initState() {
    super.initState();

    for (var i = 2; i < 11; i++) {
      valueFt.add({"name": "$i Ft", "value": i});
    }

    for (var i = 0; i < 12; i++) {
      valueInch.add({"name": "$i Inch", "value": i});
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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Select your height",
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
                        selectFt = value;
                        widget.didChange({
                          "ft": valueFt[selectFt]["name"],
                          "inch": valueInch[selectInch]["name"],
                        });
                      },
                      children: List<Widget>.generate(valueFt.length, (index) {
                        var obj = valueFt[index];

                        return Text("${obj["name"]}");
                      }),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      itemExtent: 32,
                      onSelectedItemChanged: (value) {
                        selectInch = value;
                        widget.didChange({
                          "ft": valueFt[selectFt]["name"],
                          "inch": valueInch[selectInch]["name"],
                        });
                      },
                      children: List<Widget>.generate(valueFt.length, (index) {
                        var obj = valueInch[index];

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
