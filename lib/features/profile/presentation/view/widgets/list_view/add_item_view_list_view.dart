import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/default_button.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/add_item_photo_container.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/add_item_check_boxes_section.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/add_item_city_section.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/add_item_fields_section.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/add_item_rent_type_section.dart';

class AddItemViewListView extends StatelessWidget {
  const AddItemViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const AddItemPhotoContainer(),
        AddItemRentTypeSection(),
        const AddItemFieldsSection(),
        const AddItemCheckBoxesSection(),
        SizedBox(height: 31.h),
        AddItemCitySection(),
        DefaultButton(
          btnTitle: 'Share',
          onPressed: () {},
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
