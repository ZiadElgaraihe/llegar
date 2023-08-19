import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/add_item_condition_column.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/add_item_info_column.dart';

class AddItemFieldsSection extends StatelessWidget {
  const AddItemFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AddItemInfoColumn(
          title: 'Title',
          keyboardType: TextInputType.name,
        ),
        AddItemInfoColumn(
          title: 'Description',
          keyboardType: TextInputType.name,
        ),
        AddItemInfoColumn(
          title: 'Price / Day',
          keyboardType: TextInputType.number,
        ),
        AddItemInfoColumn(
          title: 'Shipping Price',
          keyboardType: TextInputType.number,
        ),
        AddItemConditionColumn(),
      ],
    );
  }
}
