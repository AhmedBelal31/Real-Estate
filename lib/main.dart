import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/core/home_screen.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/core/utils/responsive.dart';
import 'package:real_estate_app/features/main/main_section.dart';

void main() {
  runApp(const RealEstateApp());
}

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: !Responsive.isMobile(context) ? const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ) : null,
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
