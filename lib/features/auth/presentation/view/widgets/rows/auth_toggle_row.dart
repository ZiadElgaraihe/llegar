import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AuthToggleRow extends StatelessWidget {
  const AuthToggleRow({
    super.key,
    required this.rowTitle,
    required this.btnTitle,
    required this.onTap,
  });

  final String btnTitle;
  final void Function() onTap;
  final String rowTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          rowTitle,
          style: TextStyles.textStyle14.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        SizedBox(width: 8.w),
        InkWell(
          onTap: onTap,
          child: Text(
            btnTitle,
            style: TextStyles.textStyle14,
          ),
        ),
      ],
    );
  }
}
