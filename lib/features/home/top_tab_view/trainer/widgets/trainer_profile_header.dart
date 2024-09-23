import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/widgets/round_button.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              AppAssets.trainerProfileImage,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sayed Mostafa',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Specialization in fitness',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: RoundButton(
                        title: 'Follow',
                        onPressed: () {},
                        height: 35,
                        radius: 10,
                        fontSize: 12,
                        isPadding: false,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: RoundButton(
                        title: 'Contact',
                        fontSize: 12,
                        onPressed: () {},
                        height: 35,
                        radius: 10,
                        isPadding: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.locationImage,
                      width: 12,
                      height: 12,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Egypt',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
