import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/sign_up_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/more_personal_data_sign_up_view_sections/id_photo_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/more_personal_data_sign_up_view_sections/live_photo_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/more_personal_data_sign_up_view_sections/phone_number_section.dart';

class MorePersonalDataSignUpViewBody extends StatefulWidget {
  const MorePersonalDataSignUpViewBody({super.key});

  @override
  State<MorePersonalDataSignUpViewBody> createState() =>
      _MorePersonalDataSignUpViewBodyState();
}

class _MorePersonalDataSignUpViewBodyState
    extends State<MorePersonalDataSignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const AuthenticationAppBar(),
          PhoneNumberSection(formKey: _formKey),
          const LivePhotoSection(),
          const IdPhotoSection(),
          SignUpBlocConsumer(formKey: _formKey),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
