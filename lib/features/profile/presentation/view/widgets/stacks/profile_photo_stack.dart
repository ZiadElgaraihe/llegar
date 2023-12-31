import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/buttons/edit_image_button.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/profile_image_container.dart';

class ProfilePhotoStack extends StatelessWidget {
  const ProfilePhotoStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileImageContainer(
          height: 100.h,
          width: 100.w,
        ),
        Positioned(
          right: AppConfig.sizeData.width >= 600 ? 15.w : 5.w,
          bottom: 5.h,
          child: EditImageButton(
            heigth: 22.h,
            width: 22.w,
          ),
        ),
      ],
    );
  }
}
