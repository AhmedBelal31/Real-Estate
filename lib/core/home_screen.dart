import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/core/utils/responsive.dart';
import 'package:real_estate_app/features/main/main_section.dart';
import '../features/side_menu/presentation/view/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key, required this.mainSection});
  const HomeScreen({super.key});

  // final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (BuildContext context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenuSection(),
                ),
              const SizedBox(width: kDefaultPadding),
              const Expanded(
                flex: 7,
                child: MainSection(),
              ),
              const SizedBox(width: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
