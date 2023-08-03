import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/successful_view_body.dart';

class SuccessfulView extends StatelessWidget {
  const SuccessfulView({super.key});

  static const String id = '/SuccessfulView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessfulViewBody(),
    );
  }
}
