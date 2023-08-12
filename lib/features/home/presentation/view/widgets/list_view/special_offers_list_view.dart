import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/containers/special_offers_container.dart';

class SpecialOffersListView extends StatelessWidget {
  const SpecialOffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 50.h),
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) => const SpecialOffersContainer(),
            separatorBuilder: (context, index) => SizedBox(height: 24.h),
          ),
        ),
      ],
    );
  }
}
