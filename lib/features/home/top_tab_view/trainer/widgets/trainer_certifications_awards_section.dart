import 'package:flutter/material.dart';
import 'package:healtho/core/widgets/title_subtitle_button.dart';

class CertificationsAwardsSection extends StatelessWidget {
  final bool isTrainer;
  const CertificationsAwardsSection({super.key, required this.isTrainer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSubtitleButton(
          title: "Certifications",
          subtitle: "Advance Trainer Certification ISSA",
          onPressed: () {},
        ),
        TitleSubtitleButton(
          title: "Awards",
          subtitle: "Best in Muscle Building",
          onPressed: () {},
        ),
        TitleSubtitleButton(
          title: "Publish Articles",
          subtitle: "Why Breathing is necessary while Gyming",
          onPressed: () {},
        ),
        TitleSubtitleButton(
          title: "Conferences and Expos Attended",
          subtitle: "ISSA 2019",
          onPressed: () {},
        ),
        TitleSubtitleButton(
          title: isTrainer
              ? "Personal Training Client and Feedback"
              : "Feedback",
          subtitle: "Strict, Calm in Nature",
          onPressed: () {},
        ),
      ],
    );
  }
}
