import 'package:flutter/material.dart';
import 'package:healtho/core/utils/assets.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/features/home/settings/widgets/setting_row.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  AppAssets.userPlaceholderImage,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
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
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '+201091706101',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "sayed.mostafa@gmail.com",
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.locationImage,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Asyut',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.primaryText,
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
        SettingRow(
          title: "Complete Task",
          icon: "assets/img/completed_tasks.png",
          value: "3",
          onPressed: () {},
        ),
        SettingRow(
          title: "Level",
          icon: AppAssets.levelImage,
          value: "Beginner",
          onPressed: () {},
        ),
        SettingRow(
          title: "Goals",
          icon: AppAssets.goalImage,
          value: "Mass Gain",
          onPressed: () {},
        ),
        SettingRow(
          title: "Challenges",
          icon: AppAssets.challengesImage,
          value: "4",
          onPressed: () {},
        ),
        SettingRow(
          title: "Plans",
          icon: AppAssets.calenderImage,
          value: "2",
          onPressed: () {},
        ),
        SettingRow(
          title: "Fitness Device",
          icon: AppAssets.smartWatchImage,
          value: "Mi",
          onPressed: () {},
        ),
        SettingRow(
          title: "Refer a Friend",
          icon: AppAssets.shareImage,
          value: "",
          onPressed: () {},
        ),
      ],
    );
  }
}
