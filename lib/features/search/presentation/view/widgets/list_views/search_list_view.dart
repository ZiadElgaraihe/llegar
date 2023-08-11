import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/rent_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 40.h),
        physics: const BouncingScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) => const RentItem(),
        separatorBuilder: (context, index) => SizedBox(height: 40.h),
      ),
    );
  }
}
