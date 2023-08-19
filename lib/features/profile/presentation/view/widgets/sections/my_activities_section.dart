import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/features/profile/presentation/view/activities_items_view.dart';
import 'package:llegar/features/profile/presentation/view/add_item_view.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/setting_item_button.dart';

class MyActivitiesSection extends StatelessWidget {
  const MyActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        SettingItemButton(
          icon: AppIcons.iconsMyItems,
          title: 'My Items',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ActivitiesItemsView(
                  appBarTitle: 'My Items',
                ),
              ),
            );
          },
        ),
        SettingItemButton(
          icon: AppIcons.iconsMyRentedItems,
          title: 'My Rented Items',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ActivitiesItemsView(
                  appBarTitle: 'My Rented Items',
                ),
              ),
            );
          },
        ),
        SettingItemButton(
          icon: AppIcons.iconAddItem,
          title: 'Add Item',
          onTap: () {
            Navigator.pushNamed(context, AddItemView.id);
          },
        ),
      ],
    );
  }
}
