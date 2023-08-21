import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/contact_us_container.dart';

class ContactUsListView extends StatelessWidget {
  ContactUsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: _contactUs.length,
      itemBuilder: (context, index) => ContactUsContainer(
        title: _contactUs[index]['title'],
        image: _contactUs[index]['image'],
        onTap: _contactUs[index]['onTap'],
      ),
      separatorBuilder: (context, index) => SizedBox(height: 24.h),
    );
  }

  final List<Map<String, dynamic>> _contactUs = <Map<String, dynamic>>[
    {
      'title': 'Customer Services',
      'image': AppImages.imagesHeadphone,
      'onTap': () {},
    },
    {
      'title': 'WhatsApp',
      'image': AppImages.imagesWhatsapp,
      'onTap': () {},
    },
    {
      'title': 'Website',
      'image': AppImages.imagesWebsite,
      'onTap': () {},
    },
    {
      'title': 'Facebook',
      'image': AppImages.imagesFacebookContactUs,
      'onTap': () {},
    },
    {
      'title': 'Twitter',
      'image': AppImages.imagesTwitter,
      'onTap': () {},
    },
    {
      'title': 'Instagram',
      'image': AppImages.imagesInstagram,
      'onTap': () {},
    },
  ];
}
