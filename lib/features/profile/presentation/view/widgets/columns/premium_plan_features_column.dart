import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/rows/premium_subscribe_feature_row.dart';

class PremiumPlanFeaturesColumn extends StatelessWidget {
  const PremiumPlanFeaturesColumn({
    super.key,
    required this.planFeatures,
  });

  final Map<String, dynamic> planFeatures;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PremiumSubscribeFeatureRow(
          feature:
              'Sharing ${planFeatures['sharingAmount']} of the rent amount with the application',
        ),
        PremiumSubscribeFeatureRow(
          feature: (planFeatures['isVerified'])
              ? 'verified account'
              : 'Not verified account',
        ),
        PremiumSubscribeFeatureRow(
          feature: 'Top on search level ${planFeatures['searchLevel']}',
        ),
        const PremiumSubscribeFeatureRow(
          feature: '30 Days of subscription',
        ),
        PremiumSubscribeFeatureRow(
          feature: '${planFeatures['numberOfAds']} Ads',
        ),
      ],
    );
  }
}
