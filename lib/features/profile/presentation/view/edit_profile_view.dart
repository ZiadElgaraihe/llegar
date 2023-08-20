import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/edit_profile_view_body.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  static const String id = '/EditProfileView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: EditProfileViewBody(),
      ),
    );
  }
}
