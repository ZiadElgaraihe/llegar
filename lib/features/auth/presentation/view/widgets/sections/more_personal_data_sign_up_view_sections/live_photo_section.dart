import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/containers/edit_photo_container.dart';
import 'package:llegar/features/auth/presentation/view/widgets/containers/user_photo_container.dart';

class LivePhotoSection extends StatelessWidget {
  const LivePhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16.w),
          alignment: Alignment.centerLeft,
          child: Text(
            'Live Photo',
            style: TextStyles.textStyle16.copyWith(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: AppColors.kSecondaryColor,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Stack(
          children: [
            const UserPhotoContainer(),
            Positioned(
              right: 14.75.w,
              bottom: 16.h,
              child: const EditPhotoContainer(),
            ),
          ],
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
