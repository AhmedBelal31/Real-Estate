import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import '../../../../../core/utils/responsive.dart';
import 'widgets/banner_title.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 1.3 : 2,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              color: kDarkColor.withOpacity(.10),
            ),
            const BannerTitleAndContact()
          ],
        ));
  }
}
