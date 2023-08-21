import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ContactUsContainerInkWellButton extends StatelessWidget {
  const ContactUsContainerInkWellButton({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  final String title;
  final String image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.w),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 60.w),
        child: Row(
          children: [
            SvgPicture.asset(
              image,
              height: 32.h,
              width: 32.w,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 24.w),
            Text(title, style: TextStyles.textStyle20),
          ],
        ),
      ),
    );
  }
}
