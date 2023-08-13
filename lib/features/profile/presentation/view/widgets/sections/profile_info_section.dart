import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/edit_image_button.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/profile_info_column.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/profile_image_container.dart';
import 'package:llegar/features/profile/presentation/view/widgets/rows/profile_rate_row.dart';

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
              Stack(
                children: [
                  const ProfileImageContainer(),
                  Positioned(
                    right: 5.w,
                    bottom: 5.h,
                    child: const EditImageButton(),
                  ),
                ],
              ),
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
