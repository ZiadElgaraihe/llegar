import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/rows/add_item_choice_row.dart';

class AddItemCheckBoxesSection extends StatelessWidget {
  const AddItemCheckBoxesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddItemCheckBoxRow(title: 'Negotiable'),
        AddItemCheckBoxRow(title: 'Availability'),
      ],
    );
  }
}
