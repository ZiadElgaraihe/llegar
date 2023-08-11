import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/home_app_bar_action_button.dart';
import 'package:llegar/features/home/presentation/view/widgets/columns/greeting_column.dart';
import 'package:llegar/features/home/presentation/view/widgets/containers/profile_photo_container.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: Row(
          children: [
            const ProfilePhotoContainer(),
            SizedBox(width: 16.w),
            const GreetingColumn(),
            const Spacer(),
            const HomeAppBarActionButton(
              icon: AppIcons.iconsBell,
            ),
            SizedBox(width: 16.w),
            const HomeAppBarActionButton(
              icon: AppIcons.iconsMultipleHeart,
            ),
          ],
        ),
      ),
    );
  }
}
