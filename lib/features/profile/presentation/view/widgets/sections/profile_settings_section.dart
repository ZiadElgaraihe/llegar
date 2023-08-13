import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/features/profile/presentation/view/my_activities_view.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/setting_item_button.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/setting_log_out.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/setting_switch_item.dart';

class ProfileSettingsSection extends StatelessWidget {
  const ProfileSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SettingItemButton(
            icon: AppIcons.iconsEditProfile,
            title: 'Edit Profile',
            onTap: () {},
          ),
          SettingItemButton(
            icon: AppIcons.iconsMyActivities,
            title: 'My Activities',
            onTap: () {
              Navigator.pushNamed(context, MyActivitiesView.id);
            },
          ),
          const SettingSwitchItem(
            icon: AppIcons.iconsNotification,
            title: 'Notification',
          ),
          SettingItemButton(
            icon: AppIcons.iconsHelpCenter,
            title: 'Help Center',
            onTap: () {},
          ),
          SettingItemButton(
            icon: AppIcons.iconsPrivacyPolicy,
            title: 'Privacy Policy',
            onTap: () {},
          ),
          SettingItemButton(
            icon: AppIcons.iconsContactUs,
            title: 'Contact Us',
            onTap: () {},
          ),
          const SettingSwitchItem(
            icon: AppIcons.iconsDarkMode,
            title: 'Dark Mode',
          ),
          const SettingSwitchItem(
            icon: AppIcons.iconsLocation,
            title: 'Location',
          ),
          const SettingLogOut(),
        ],
      ),
    );
  }
}
