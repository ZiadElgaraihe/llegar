import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/edit_image_button.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/profile_image_container.dart';

class EditProfilePhotoStack extends StatelessWidget {
  const EditProfilePhotoStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileImageContainer(
          height: 150.h,
          width: 150.w,
        ),
        Positioned(
          right: 15.w,
          bottom: 10.h,
          child: EditImageButton(
            heigth: 26.h,
            width: 26.w,
          ),
        ),
      ],
    );
  }
}
