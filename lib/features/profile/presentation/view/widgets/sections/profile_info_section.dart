import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/profile_info_column.dart';
import 'package:llegar/features/profile/presentation/view/widgets/rows/profile_rate_row.dart';
import 'package:llegar/features/profile/presentation/view/widgets/stacks/profile_photo_stack.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Row(
            children: [
              const ProfilePhotoStack(),
              SizedBox(width: 28.w),
              const ProfileInfoColumn(),
            ],
          ),
          SizedBox(height: 16.h),
          const ProfileRateRow(),
        ],
      ),
    );
  }
}
