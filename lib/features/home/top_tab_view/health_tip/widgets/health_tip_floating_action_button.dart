import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';

class HealthTipFloatingActionButton extends StatelessWidget {
  const HealthTipFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.favColorImage,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.shareImage,
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
