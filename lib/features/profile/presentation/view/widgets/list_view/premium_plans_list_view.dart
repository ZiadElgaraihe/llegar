import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/premium_subscribe_container.dart';

class PremiumPlansListView extends StatelessWidget {
  PremiumPlansListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) => PremiumSubscribeContainer(
        planFeatures: _features[index],
      ),
      separatorBuilder: (context, index) => SizedBox(height: 32.h),
    );
  }

  final List<Map<String, dynamic>> _features = <Map<String, dynamic>>[
    {
      'price': '\$50.00',
      'sharingAmount': '15%',
      'isVerified': false,
      'searchLevel': 3,
      'numberOfAds': 3,
    },
    {
      'price': '\$80.00',
      'sharingAmount': '10%',
      'isVerified': true,
      'searchLevel': 2,
      'numberOfAds': 7,
    },
    {
      'price': '\$110.00',
      'sharingAmount': '5%',
      'isVerified': true,
      'searchLevel': 1,
      'numberOfAds': 15,
    },
  ];
}
