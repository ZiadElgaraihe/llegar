import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SettingSwitchItem extends StatefulWidget {
  const SettingSwitchItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  State<SettingSwitchItem> createState() => _SettingSwitchItemState();
}

class _SettingSwitchItemState extends State<SettingSwitchItem> {
  final ValueNotifier<bool> _isTurnOn = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: [
          SvgPicture.asset(
            widget.icon,
            height: 28.h,
            width: 24.w,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 24.w),
          Text(
            widget.title,
            style: TextStyles.textStyle20.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.kSecondaryColor,
            ),
          ),
          const Spacer(),
          AdvancedSwitch(
            controller: _isTurnOn,
            height: 22.h,
            width: 40.w,
            activeColor: AppColors.kPrimaryColor,
            inactiveColor: const Color(0xFFE4EBF6),
          ),
        ],
      ),
    );
  }
}
