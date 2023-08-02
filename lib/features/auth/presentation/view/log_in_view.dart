import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  static const String id = '/LogInView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: LogInViewBody(),
      ),
    );
  }
}
