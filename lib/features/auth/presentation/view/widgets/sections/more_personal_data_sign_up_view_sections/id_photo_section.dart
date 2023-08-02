import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_verification_code_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/containers/edit_photo_container.dart';
import 'package:llegar/features/auth/presentation/view/widgets/containers/id_photo_container.dart';

class IdPhotoSection extends StatelessWidget {
  const IdPhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16.w),
          alignment: Alignment.centerLeft,
          child: Text(
            'ID Photo',
            style: TextStyles.textStyle16.copyWith(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: AppColors.kSecondaryColor,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        const Stack(
          children: [
            IdPhotoContainer(),
            Positioned(
              right: 0,
              top: 0,
              child: EditPhotoContainer(),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        ColoredButton(
          btnTitle: 'Continue',
          onPressed: () {
            Navigator.pushNamed(context, SignUpVerificationCodeView.id);
          },
        ),
      ],
    );
  }
}
