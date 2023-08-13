import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/setting_item_button.dart';

class MyActivitiesViewBody extends StatelessWidget {
  const MyActivitiesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const GlobalAppBar(title: 'My Activities'),
            SizedBox(height: 40.h),
            SettingItemButton(
              icon: AppIcons.iconsMyItems,
              title: 'My Items',
              onTap: () {},
            ),
            SettingItemButton(
              icon: AppIcons.iconsMyRentedItems,
              title: 'My Rented Items',
              onTap: () {},
            ),
            SettingItemButton(
              icon: AppIcons.iconAddItem,
              title: 'Add Item',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
