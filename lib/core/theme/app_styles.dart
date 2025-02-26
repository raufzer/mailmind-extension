import 'package:flutter/material.dart';

abstract class AppStyles {
  // Font Weights
  static const FontWeight black = FontWeight.w900;
  static const FontWeight bold = FontWeight.w700; 
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400; 
  static const kInter = 'Inter';

  // Text Styles
  static const TextStyle headline1 = TextStyle(
    fontSize: 40,
    fontFamily: kInter,
    fontWeight: black,
  );
  static const TextStyle headline2 = TextStyle(
    fontSize: 30,
    fontFamily: kInter,
    fontWeight: bold,
  );
  static const TextStyle headline3 = TextStyle(
    fontSize: 20,
    fontFamily: kInter,
    fontWeight: bold,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 18,
    fontFamily: kInter,
    fontWeight: regular,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 18,
    fontFamily: kInter,
    fontWeight: medium,
  );
  static const TextStyle bodyText3 = TextStyle(
    fontSize: 18,
    fontFamily: kInter,
    fontWeight: bold,
  );

  static const TextStyle bodyText4 = TextStyle(
    fontSize: 16,
    fontFamily: kInter,
    fontWeight: regular,
  );
  static const TextStyle bodyText5 = TextStyle(
    fontSize: 16,
    fontFamily: kInter,
    fontWeight: medium,
  );

  static const TextStyle bodyText6 = TextStyle(
    fontSize: 14,
    fontFamily: kInter,
    fontWeight: regular,
  );
  static const TextStyle bodyText7 = TextStyle(
    fontSize: 14,
    fontFamily: kInter,
    fontWeight: bold,
  );
}
