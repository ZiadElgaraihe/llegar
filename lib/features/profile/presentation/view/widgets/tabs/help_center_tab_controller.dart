import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/tabs/ans_tab_body.dart';
import 'package:llegar/features/profile/presentation/view/widgets/tabs/faq_tab_body.dart';

class HelpCenterTabController extends StatelessWidget {
  const HelpCenterTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Column(
          children: [
            SizedBox(
              width: 380.w,
              child: TabBar(
                splashBorderRadius: BorderRadius.circular(10.w),
                labelStyle: TextStyles.textStyle24,
                labelColor: AppColors.kPrimaryColor,
                unselectedLabelColor: AppColors.kSecondaryColor,
                indicatorColor: AppColors.kPrimaryColor,
                indicatorWeight: 5.h,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20.w),
                tabs: const [
                  Tab(text: 'FAQ'),
                  Tab(text: 'ANS'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const FaqTabBody(),
                  AnsTabBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
