import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme appTextTheme(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

  return TextTheme(
    displayLarge: GoogleFonts.openSans(
      fontSize: width * 0.06,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: width * 0.055,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: width * 0.05,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: width * 0.045,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: width * 0.04,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: width * 0.035,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: width * 0.032,
    ),
    titleMedium: GoogleFonts.openSans(
      fontSize: width * 0.03,
    ),
    titleSmall: GoogleFonts.openSans(
      fontSize: width * 0.028,
    ),
    bodyLarge: GoogleFonts.openSans(fontSize: width * 0.025),
    bodyMedium: GoogleFonts.openSans(
      fontSize: width * 0.02,
    ),
    bodySmall: GoogleFonts.openSans(
      fontSize: width * 0.017,
    ),
    labelLarge: GoogleFonts.openSans(fontSize: width * 0.015),
    labelMedium: GoogleFonts.openSans(
      fontSize: width * 0.01,
    ),
    labelSmall: GoogleFonts.openSans(
      fontSize: width * 0.005,
    ),
  );
}
