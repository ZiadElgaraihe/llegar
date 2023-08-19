import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/list_view/add_item_view_list_view.dart';

class AddItemViewBody extends StatelessWidget {
  const AddItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: const GlobalAppBar(title: 'Add Item'),
            ),
            SizedBox(height: 40.h),
            const Expanded(
              child: AddItemViewListView(),
            ),
          ],
        ),
      ),
    );
  }
}
