import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/home_app_bar_action_button.dart';
import 'package:llegar/features/home/presentation/view/widgets/columns/greeting_column.dart';
import 'package:llegar/features/home/presentation/view/widgets/containers/profile_photo_container.dart';
import 'package:llegar/features/home/presentation/view/wishlist_view.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Row(
        children: [
          const ProfilePhotoContainer(),
          SizedBox(width: 16.w),
          const GreetingColumn(),
          const Spacer(),
          SizedBox(width: 16.w),
          HomeAppBarActionButton(
            icon: AppIcons.iconsMultipleHeart,
            onTap: () {
              Navigator.pushNamed(context, WishlistView.id);
            },
          ),
        ],
      ),
    );
  }
}
