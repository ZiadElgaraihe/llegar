import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';

class HomeAppBarAction extends StatelessWidget {
  const HomeAppBarAction({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50.w),
      child: SvgPicture.asset(
        icon,
        height: 24.h,
        width: 24.w,
        fit: BoxFit.fill,
      ),
    );
  }
}
