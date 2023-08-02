import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/more_personal_data_sign_up_view_sections/id_photo_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/more_personal_data_sign_up_view_sections/live_photo_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/more_personal_data_sign_up_view_sections/phone_number_section.dart';

class MorePersonalDataSignUpViewBody extends StatelessWidget {
  const MorePersonalDataSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AuthenticationAppBar(),
            PhoneNumberSection(),
            LivePhotoSection(),
            IdPhotoSection(),
          ],
        ),
      ),
    );
  }
}
