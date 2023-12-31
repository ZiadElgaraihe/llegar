import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.imagesSplashLogo,
                height: 366.69.h,
                width: 297.1.w,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 100.31.h),
              SpinKitCircle(
                color: AppColors.kPrimaryColor,
                size: 70.w,
              ),
            ],
          ),
        ),
        Positioned(
          right: 21.8.w,
          top: 89.h,
          child: SvgPicture.asset(
            AppImages.imagesEllipse9,
            height: 77.5.h,
            width: 77.5.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          top: 226.h,
          child: SvgPicture.asset(
            AppImages.imagesEllipse10,
            height: 45.h,
            width: 45.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 87.37.h,
          child: SvgPicture.asset(
            AppImages.imagesEllipse12,
            height: 167.5.h,
            width: 167.5.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: SvgPicture.asset(
            AppImages.imagesEllipse11,
            height: 133.5.h,
            width: 133.5.w,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
