import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/list_view/contact_us_list_view.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 23.w, right: 17.w, bottom: 70.h),
            child: const GlobalAppBar(
              title: 'Contact Us',
              initSuffixIcon: true,
            ),
          ),
          Expanded(
            child: ContactUsListView(),
          )
        ],
      ),
    );
  }
}
