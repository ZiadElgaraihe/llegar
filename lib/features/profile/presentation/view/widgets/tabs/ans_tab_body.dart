import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/help_center_ans_container.dart';

class AnsTabBody extends StatelessWidget {
  AnsTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.only(
        top: 86.h,
        right: 16.w,
        bottom: 50.h,
        left: 17.w,
      ),
      itemCount: _answers.length,
      itemBuilder: (context, index) => HelpCenterAnsContainer(
        question: _answers[index]['question']!,
        answer: _answers[index]['answer']!,
      ),
      separatorBuilder: (context, index) => SizedBox(height: 24.h),
    );
  }

  final List<Map<String, String>> _answers = [
    {
      'question': 'QUESTION 1',
      'answer': 'ANSWER 1',
    },
    {
      'question': 'QUESTION 2',
      'answer': 'ANSWER 2',
    },
    {
      'question': 'QUESTION 3',
      'answer': 'ANSWER 3',
    }
  ];
}
