import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/containers/custom_drag_handle.dart';

class DragHandleAndTitle extends StatelessWidget {
  const DragHandleAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          const CustomDragHandle(),
          SizedBox(height: 24.h),
          Text(
            'Sort & Filter',
            style: TextStyles.textStyle24,
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
