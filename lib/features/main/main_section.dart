import 'package:flutter/material.dart';
import 'features/contact_info/view/icon_info.dart';
import 'features/home_banner/view/home_banner.dart';
import 'features/projects/view/projects.dart';
import 'features/recommendations/view/recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HomeBanner(),
            SizedBox(height: 30),
            IconInfo(),
            SizedBox(height: 30),
            Projects(),
            SizedBox(height: 30),
            Recommendations(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
