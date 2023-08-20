import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/privacy_policy_view_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  static const String id = '/PrivacyPolicyView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PrivacyPolicyViewBody(),
    );
  }
}
