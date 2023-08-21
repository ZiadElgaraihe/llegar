import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/contact_us_view_body.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  static const String id = '/ContactUsView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ContactUsViewBody(),
    );
  }
}
