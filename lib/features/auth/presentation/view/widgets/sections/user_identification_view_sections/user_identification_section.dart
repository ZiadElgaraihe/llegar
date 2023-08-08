import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/sign_up_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/user_identification_view_sections/id_photo_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/user_identification_view_sections/live_photo_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/phone_number_form.dart';

class UserIdentificationSection extends StatefulWidget {
  const UserIdentificationSection({super.key});

  @override
  State<UserIdentificationSection> createState() =>
      _UserIdentificationSectionState();
}

class _UserIdentificationSectionState extends State<UserIdentificationSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhoneNumberForm(formKey: _formKey),
        const LivePhotoSection(),
        const IdPhotoSection(),
        SignUpBlocConsumer(formKey: _formKey),
        SizedBox(height: 50.h),
      ],
    );
  }
}
