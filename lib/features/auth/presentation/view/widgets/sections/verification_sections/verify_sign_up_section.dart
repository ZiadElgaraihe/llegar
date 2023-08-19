import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/verify_sign_up_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/verification_sections/resend_code_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/otp_text_field.dart';

class VerifySignUpSection extends StatefulWidget {
  const VerifySignUpSection({super.key});

  @override
  State<VerifySignUpSection> createState() => _VerifySignUpSectionState();
}

class _VerifySignUpSectionState extends State<VerifySignUpSection> {
  final List<TextEditingController> _resetCodeControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 28.h),
        OtpTextField(
          resetCodeControllers: _resetCodeControllers,
        ),
        const ResendCodeSection(),
        VerifySignUpBlocConsumer(
          resetCodeControllers: _resetCodeControllers,
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
