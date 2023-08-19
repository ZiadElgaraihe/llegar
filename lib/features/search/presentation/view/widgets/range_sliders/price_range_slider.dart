import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({super.key});

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  final ValueNotifier<SfRangeValues> _rangeValues =
      ValueNotifier<SfRangeValues>(const SfRangeValues(0, 10000));
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _rangeValues,
      builder: (context, rangeValues, child) => SfRangeSliderTheme(
        data: SfRangeSliderThemeData(
          thumbColor: const Color(0xFFEDF2F7),
          thumbStrokeWidth: 3.w,
          thumbStrokeColor: AppColors.kPrimaryColor,
          thumbRadius: 12.h,
          activeTrackHeight: 2.h,
          inactiveTrackHeight: 1.h,
          inactiveTrackColor: const Color.fromRGBO(30, 30, 30, 0.62),
          tooltipBackgroundColor: AppColors.kTransparent,
          tooltipTextStyle:
              TextStyles.textStyle16.copyWith(color: AppColors.kPrimaryColor),
        ),
        child: SfRangeSlider(
          min: 0,
          max: 10000,
          stepSize: 50,
          shouldAlwaysShowTooltip: true,
          tooltipTextFormatterCallback: (actualValue, formattedText) =>
              '\$${actualValue.round()}',
          values: rangeValues,
          onChanged: (value) {
            _rangeValues.value = value;
          },
        ),
      ),
    );
  }
}
