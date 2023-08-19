import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AddItemCheckBoxRow extends StatefulWidget {
  const AddItemCheckBoxRow({super.key, required this.title});

  final String title;

  @override
  State<AddItemCheckBoxRow> createState() => _AddItemCheckBoxRowState();
}

class _AddItemCheckBoxRowState extends State<AddItemCheckBoxRow> {
  final ValueNotifier<bool> _isChecked = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 31.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 20.w,
            height: 20.h,
            child: ValueListenableBuilder(
              valueListenable: _isChecked,
              builder: (context, value, child) => Checkbox(
                value: value,
                onChanged: (value) {
                  _isChecked.value = value!;
                },
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Text(
            widget.title,
            style: TextStyles.textStyle20.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
