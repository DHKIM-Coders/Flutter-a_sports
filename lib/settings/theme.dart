import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme({Color mColor = Colors.black}) {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(
        fontSize: 46.0, color: mColor, fontWeight: FontWeight.bold),
    displayMedium: GoogleFonts.openSans(
        fontSize: 42.0, color: mColor, fontWeight: FontWeight.bold),
    displaySmall: GoogleFonts.openSans(
        fontSize: 38.0, color: mColor, fontWeight: FontWeight.bold),
    headlineLarge: GoogleFonts.openSans(
        fontSize: 34.0, color: mColor, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 30.0, color: mColor, fontWeight: FontWeight.bold),
    headlineSmall: GoogleFonts.openSans(
        fontSize: 26.0, color: mColor, fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.openSans(
        fontSize: 22.0, color: mColor, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.openSans(
        fontSize: 18.0, color: mColor,fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.openSans(
        fontSize: 14.0, color: mColor, fontWeight: FontWeight.bold),

    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: mColor),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: mColor),
    bodySmall: GoogleFonts.openSans(fontSize: 12.0, color: mColor),
  );
}

AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    textTheme: TextTheme(
      headline6: GoogleFonts.nanumGothic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),

  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    // appBarTheme: appTheme(),
    primaryColor: Colors.blue,
  );
}