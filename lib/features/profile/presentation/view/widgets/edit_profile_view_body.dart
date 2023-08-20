import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/edit_profile_info_section.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 32.h),
            child: const GlobalAppBar(title: 'Edit Profile'),
          ),
          Expanded(
            child: EditProfileInfoSection(),
          ),
        ],
      ),
    );
  }
}
