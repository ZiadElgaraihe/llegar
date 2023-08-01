import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';

class SocialOutlinedButton extends StatelessWidget {
  const SocialOutlinedButton({
    super.key,
    required this.image,
    required this.onPressed,
  });

  final String image;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 63.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.w),
                side: BorderSide.none),
          ),
        ),
        child: SvgPicture.asset(
          image,
          height: 23.2.h,
          width: 23.2.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
