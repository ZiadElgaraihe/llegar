import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/add_item_view_body.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({super.key});

  static const String id = '/AddItemView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: AddItemViewBody(),
      ),
    );
  }
}
