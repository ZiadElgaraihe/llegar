import 'package:flutter/material.dart';
import 'package:llegar/features/home/presentation/view/widgets/special_offers_view_body.dart';

class SpecialOffersView extends StatelessWidget {
  const SpecialOffersView({super.key});

  static const String id = '/SpecialOffersView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpecialOffersViewBody(),
    );
  }
}
