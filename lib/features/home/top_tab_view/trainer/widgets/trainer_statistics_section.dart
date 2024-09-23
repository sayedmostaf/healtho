import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '4/5',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Ratings",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 45,
            color: AppColors.board,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '78',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Following',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 45,
            color: AppColors.board,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '5667',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Follower',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
