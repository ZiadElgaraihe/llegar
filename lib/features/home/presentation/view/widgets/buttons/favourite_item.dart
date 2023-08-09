import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';

class FavouriteItem extends StatefulWidget {
  const FavouriteItem({super.key});

  @override
  State<FavouriteItem> createState() => _FavouriteItemState();
}

class _FavouriteItemState extends State<FavouriteItem> {
  final ValueNotifier<bool> _isFavourite = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isFavourite.value = !_isFavourite.value;
      },
      child: ValueListenableBuilder(
        valueListenable: _isFavourite,
        builder: (context, value, child) => Icon(
          value ? Icons.favorite : Icons.favorite_border,
          size: 32.w,
          color: Colors.white,
        ),
      ),
    );
  }
}
