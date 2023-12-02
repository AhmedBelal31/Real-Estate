import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import '../../../../core/utils/responsive.dart';
import 'widgets/contact_info.dart';
import 'widgets/download_brochure.dart';
import 'widgets/goals.dart';
import 'widgets/logo.dart';
import 'widgets/social_media_icon.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor:
            Responsive.isDesktop(context) ? Colors.transparent : kBgColor,
        child: const SafeArea(
          child: Column(
            children: [
              Logo(),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactInfo(),
                        Divider(),
                        Goals(),
                        Divider(),
                        SizedBox(height: 20),
                        DownloadBrochure(),
                        SizedBox(height: 20),
                        SocialMediaIcons(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
