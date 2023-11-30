import 'package:flutter/material.dart';

// codes
const int PRIMARY_COFFEE_COLOR = 0xff4b2c20;
const int BACKGROUND_COFFEE_COLOR = 0xfff8ebd8;

// colors
const Color primaryCoffeeColor = Color(PRIMARY_COFFEE_COLOR);
const Color backgroundCoffeeColor = Color(BACKGROUND_COFFEE_COLOR);

// theme
final ColorScheme colorScheme = ColorScheme.fromSeed(
  background: backgroundCoffeeColor,
  primary: primaryCoffeeColor,
  seedColor: const Color(PRIMARY_COFFEE_COLOR),
);

final ThemeData themeData = ThemeData(
  colorScheme: colorScheme,
  useMaterial3: true,
  //textTheme: GoogleFonts.latoTextTheme(),
);
