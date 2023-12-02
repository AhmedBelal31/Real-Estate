import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address:', subTitle: 'Station Street 5'),
        buildContactInfo(title: 'City:', subTitle: 'Innsbruck'),
        buildContactInfo(title: 'Country:', subTitle: 'Austria'),
        buildContactInfo(title: 'Email:', subTitle: 'email@website.com'),
        buildContactInfo(title: 'Mobile:', subTitle: '+43 123 456 789'),
        buildContactInfo(title: 'Website:', subTitle: 'my@website.com'),
      ],
    );
  }

  Widget buildContactInfo({required String title, required String subTitle}) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Styles.textStyleWhite14),
            const Spacer(),
            Text(
              subTitle,
              style: Styles.textStyle14,
            ),
          ],
        ),
      );
}
