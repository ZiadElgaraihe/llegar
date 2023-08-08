import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/home/presentation/view/home_view.dart';

class SuccessfulViewBody extends StatelessWidget {
  const SuccessfulViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String pageTitle = ModalRoute.of(context)!.settings.arguments as String;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 139.h),
          SvgPicture.asset(
            AppImages.imagesOkAmico,
            height: 398.h,
            width: 398.w,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 124.h),
          Text(
            pageTitle,
            style: TextStyles.textStyle40,
          ),
          SizedBox(height: 24.h),
          Text(
            'Welcome to llegar',
            style: TextStyles.textStyle18.copyWith(
              color: AppColors.kSecondaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 24.h),
          ColoredButton(
            btnTitle: 'Get Started',
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeView.id);
            },
          ),
        ],
      ),
    );
  }
}
