import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/privacy_policy_rules_column.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          children: [
            const GlobalAppBar(title: 'Privacy Policy'),
            SizedBox(height: 14.h),
            const Expanded(
              child: PrivacyPolicyRulesColumn(),
            ),
          ],
        ),
      ),
    );
  }
}
