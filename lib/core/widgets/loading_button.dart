import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor:
            const MaterialStatePropertyAll(AppColors.kPrimaryColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.w),
          ),
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(380.w, 58.h),
        ),
      ),
      child: Center(
        child: SpinKitThreeBounce(
          color: AppColors.kBackgroundColor,
          size: 30.w,
        ),
      ),
    );
  }
}
