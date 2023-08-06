import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/forget_password_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/log_in_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/log_in_view_form.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';

class ClassicLogInSection extends StatefulWidget {
  const ClassicLogInSection({super.key});

  @override
  State<ClassicLogInSection> createState() => _ClassicLogInSectionState();
}

class _ClassicLogInSectionState extends State<ClassicLogInSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogInViewForm(
          formKey: _formKey,
          emailController: _emailController,
          passwordController: _passwordController,
        ),
        SizedBox(height: 26.h),
        const RememberMeRow(),
        SizedBox(height: 24.h),
        LogInBlocConsumer(
          formKey: _formKey,
          emailController: _emailController,
          passwordController: _passwordController,
        ),
        SizedBox(height: 4.h),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ForgetPasswordView.id);
          },
          child: Text(
            'Forget the password?',
            style: TextStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: AppColors.kGreen,
            ),
          ),
        ),
        SizedBox(height: 2.7.h),
      ],
    );
  }
}
