import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData temaPadrao() {
  return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.white38,
        brightness: Brightness.dark,
      ),
      textTheme: TextTheme(
        bodyMedium: GoogleFonts.roboto(
          fontSize: 20,
        ),
        bodyLarge: GoogleFonts.roboto(fontSize: 20),
        headlineMedium: GoogleFonts.montserrat(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.openSans(fontWeight: FontWeight.w700),
      ));
}
