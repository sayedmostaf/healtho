import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_certifications_awards_section.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_profile_header.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_social_media_section.dart';
import 'package:healtho/features/home/top_tab_view/trainer/widgets/trainer_statistics_section.dart';

class TrainerBody extends StatelessWidget {
  const TrainerBody({super.key, required this.isTrainer});
  final bool isTrainer;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        const ProfileHeader(),
        const StatisticsSection(),
        const SocialMediaSection(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            color: AppColors.board,
            height: 1,
          ),
        ),
        CertificationsAwardsSection(isTrainer: isTrainer),
      ],
    );
  }
}
