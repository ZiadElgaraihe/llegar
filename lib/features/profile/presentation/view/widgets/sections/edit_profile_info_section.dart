import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/data_text_form_field.dart';
import 'package:llegar/core/widgets/default_button.dart';
import 'package:llegar/core/widgets/phone_text_form_field.dart';
import 'package:llegar/features/profile/presentation/view/widgets/stacks/edit_profile_photo_stack.dart';
import 'package:llegar/features/profile/presentation/view/widgets/text_fields/edit_profile_email_text_form_field.dart';
import 'package:llegar/features/profile/presentation/view/widgets/text_fields/profile_type_a_head_text_form_field.dart';

class EditProfileInfoSection extends StatelessWidget {
  EditProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const EditProfilePhotoStack(),
          SizedBox(height: 24.h),
          DataTextFormField(
            hint: 'FullName',
            keyboardType: TextInputType.name,
            validator: (value, hint) {
              return null;
            },
            onSaved: (newValue) {},
          ),
          SizedBox(height: 16.h),
          DataTextFormField(
            hint: 'User Name',
            keyboardType: TextInputType.name,
            validator: (value, hint) {
              return null;
            },
            onSaved: (newValue) {},
          ),
          SizedBox(height: 16.h),
          EditProfileEmailTextFormField(
            onSaved: (newValue) {},
          ),
          SizedBox(height: 16.h),
          PhoneTextFormField(
            onSaved: (newValue) {},
          ),
          SizedBox(height: 16.h),
          ProfileTypeAHeadTextFormField(
            hint: 'City',
            suggestionList: _cities,
            onSaved: (newValue) {},
          ),
          DefaultButton(
            btnTitle: 'Update',
            onPressed: () {},
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  final List<String> _cities = <String>[
    'Alexandria',
    'Aswan',
    'Asyut',
    'Beheira',
    'Beni Suef',
    'Cairo',
    'Damietta',
    'Dakahlia',
    'Faiyum',
    'Gharbia',
    'Giza',
    'Ismailia',
    'Kafr El Sheikh',
    'Luxor',
    'Matrouh',
    'Minya',
    'Monufia',
    'New Valley',
    'North Sinai',
    'Port Said',
    'Qalyubia',
    'Qena',
    'Red Sea',
    'Sharqia',
    'Sohag',
    'South Sinai',
    'Suez',
  ];
}
