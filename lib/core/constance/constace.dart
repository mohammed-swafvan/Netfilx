import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';

//SizedBox
const kWidth = SizedBox(width: 10);
const kHeight = SizedBox(height: 10);
const kHeightTwenty = SizedBox(height: 20);

//BorderRadius
final BorderRadius kBorderRadius10 = BorderRadius.circular(10);
final BorderRadius kBorderRadius30 = BorderRadius.circular(30);

//TextStyle
TextStyle kHomeTitleStyle =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16);
TextStyle kTapBarTitle =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
TextStyle kNumberFontFamily = GoogleFonts.robotoMono();

//ThemeData
ThemeData mainTheme = ThemeData(
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  fontFamily: GoogleFonts.montserrat().fontFamily,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: backGroundColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
  ),
);
