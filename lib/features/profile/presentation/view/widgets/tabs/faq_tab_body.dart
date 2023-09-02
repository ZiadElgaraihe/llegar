import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/default_button.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/help_center_faq_container.dart';

class FaqTabBody extends StatelessWidget {
  const FaqTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const HelpCenterFaqContainer(),
          DefaultButton(
            btnTitle: 'Send',
            onPressed: () {},
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
