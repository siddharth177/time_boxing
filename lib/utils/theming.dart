import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);
var kDarkColorScheme =
    ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: Colors.red);

var kThemeData = ThemeData().copyWith(
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(),
  textTheme: GoogleFonts.latoTextTheme(),
);

var kDarkThemeData = kThemeData.copyWith(colorScheme: kDarkColorScheme);
