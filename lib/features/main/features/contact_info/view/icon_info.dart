import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/styles.dart';
import '../../../../../core/utils/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildIconInfoItem(
                      icon: Icons.groups_outlined,
                      count: '+67',
                      title: 'clients',
                      context: context),
                  buildIconInfoItem(
                      icon: Icons.location_on,
                      count: '+129',
                      title: 'projects',
                      context: context),
                ],
              ),
              Row(
                children: [
                  buildIconInfoItem(
                      icon: Icons.public,
                      count: '+30',
                      title: 'countries',
                      context: context),
                  buildIconInfoItem(
                      icon: Icons.star,
                      count: '+13K',
                      title: 'stars',
                      context: context),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildIconInfoItem(
                  icon: Icons.groups_outlined,
                  count: '+67',
                  title: 'clients',
                  context: context),
              buildIconInfoItem(
                  icon: Icons.location_on,
                  count: '+129',
                  title: 'projects',
                  context: context),
              buildIconInfoItem(
                  icon: Icons.public,
                  count: '+30',
                  title: 'countries',
                  context: context),
              buildIconInfoItem(
                  icon: Icons.star,
                  count: '+13K',
                  title: 'stars',
                  context: context),
            ],
          );
  }

  Widget buildIconInfoItem({
    required IconData icon,
    required String count,
    required String title,
    required BuildContext context,
  }) =>
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Responsive.isDesktop(context)
                  ? Icon(
                      icon,
                      color: Colors.white,
                      size: 50,
                    )
                  : Icon(
                      icon,
                      color: Colors.white,
                      size: 30,
                    ),
              const SizedBox(height: 10),
              Text(
                count,
                style: Responsive.isDesktop(context)
                    ? Styles.textStyle24
                    : Styles.textStyle18,
              ),
              Text(
                title,
                style: Responsive.isDesktop(context)
                    ? Styles.textStyle16
                    : Styles.textStyle16,
              ),
            ],
          ),
        ),
      );
}
