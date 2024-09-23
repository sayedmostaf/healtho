import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.colorFacebookImage,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.twiteerImage,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.instaImage,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.youtubeImage,
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
