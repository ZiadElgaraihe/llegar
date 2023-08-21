import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/contact_us_container_ink_well_button.dart';

class ContactUsContainer extends StatelessWidget {
  const ContactUsContainer({
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
    return Container(
      height: 78.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 3.w,
        ),
      ),
      child: ContactUsContainerInkWellButton(
        title: title,
        image: image,
        onTap: onTap,
      ),
    );
  }
}
