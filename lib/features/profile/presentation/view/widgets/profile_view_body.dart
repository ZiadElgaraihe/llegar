import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/app_bars/profile_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/join_premuim_container.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/profile_info_section.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/profile_settings_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ProfileAppBar(),
            ProfileInfoSection(),
            JoinPremuimContainer(),
            ProfileSettingsSection(),
          ],
        ),
      ),
    );
  }
}
