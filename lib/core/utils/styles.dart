import 'package:flutter/cupertino.dart';
import 'package:real_estate_app/core/utils/constants.dart';

abstract class Styles {
  static const textStyle50 = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.3,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.3,
  );
  static const textStyle24 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.2,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: kBodyTextColor,
  );
  static const textStyle14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: kBodyTextColor);
  static const textStyleWhite14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

const TextStyle textStyle = TextStyle();
