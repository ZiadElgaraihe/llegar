import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';

class FavouriteItemButton extends StatefulWidget {
  const FavouriteItemButton({super.key});

  @override
  State<FavouriteItemButton> createState() => _FavouriteItemButtonState();
}

class _FavouriteItemButtonState extends State<FavouriteItemButton> {
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
