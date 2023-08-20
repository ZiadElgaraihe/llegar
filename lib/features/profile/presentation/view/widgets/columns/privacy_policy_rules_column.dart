import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/privacy_policy_item_column.dart';

class PrivacyPolicyRulesColumn extends StatelessWidget {
  const PrivacyPolicyRulesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const PrivacyPolicyItemColumn(
            title: '1. Types of Data We Collect',
            content:
                'Identifiers, which include your name, postal address, email address, unique personal identifiers, online identifiers, IP address, account name, driver’s license number*, social security number*, vehicle identification number and other similar identifiers. We collect identifiers such as name, address and contact information in order to provide you with our products and services. We may also collect your driver’s license* in connection with the use of certain products. In addition, we obtain identifiers such as user name or ID*, passwords* and similar credentials when you create an account with us to access our services or when you communicate with us via social media, as well as your IP address and unique device identifiers when you visit our websites or use our mobile apps.',
          ),
          const PrivacyPolicyItemColumn(
            title: '2. Use of Your Personal Data',
            content: '''We may use personal information we collect to:
• Provide you with the Sites as well as with information, products or services that you request from us.
     
• Complete transactions, including your rental or purchase of products and services.
     
• Provide customer and account services, such as notices regarding products and services or your account/subscription, including expiration and renewal notices.
     
• Comply with applicable laws, cooperate with investigations by law enforcement, and/or pursue our legal rights, including performing and enforcing our contractual obligations and rights, such as billing and collection.
     
• Evaluate and improve our products and services and/or develop new products or services.
     
• Tailor our marketing and advertising to you.
     
• We may also use your personal information to contact you about our own and third-parties' goods and services that may be of interest to you. If you do not want us to use your information in this way, please contact our Privacy Officer (see How to Exercise These Rights or Contact Us below for details on how to contact our Privacy Officer).''',
          ),
          const PrivacyPolicyItemColumn(
            title: '3. Disclosure of Your Personal Data',
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam cursus a augue et sollicitudin. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi at vehicula sapien. Phasellus vel nisl sodales, semper felis vulputate, malesuada arcu. Integer luctus ipsum dui, non gravida libero semper sed. Suspendisse eros lacus, fringilla at vehicula eget, viverra in odio.Nunc ligula quam, bibendum vel ultricies id, tempus malesuada sem. Aliquam vitae purus consequat lacus pulvinar pellentesque eu eu sapien. Aliquam dignissim nec sem vel sagittis.',
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
