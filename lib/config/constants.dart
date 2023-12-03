import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// codes
const int BACKGROUND_COFFEE_COLOR = 0xfff8ebd8;
// dark themes
const int EXPRESSO_BROWN = 0xff4b2c20;
const int CREAMY_LATTE = 0xffd5bba2;
const int ROASTED_CARAMEL = 0xffa67c52;
const int FRESH_MINT = 0xff4ebd7c;
const int BLACK = 0xff272727;
const int FROTHY_WHITE = 0xfff6f2ed;
// light themes
const int DARK_ROAST = 0xff332920;
const int BLACK_COFFEE = 0xff1e1410;
const int MIDNIGHT_CARAMEL = 0xff8c6a4f;
const int MOON_LIGHT_MINT = 0xff3c7266;
const int CHARCOAL_FORM = 0xff2e2a27;
const int LIGHT_GREY = 0xff989898;

// colors
const Color primaryCoffeeColor = Color(EXPRESSO_BROWN);
const Color backgroundCoffeeColor = Color(BACKGROUND_COFFEE_COLOR);

// theme
final ColorScheme colorScheme = ColorScheme.fromSeed(
  background: backgroundCoffeeColor,
  primary: primaryCoffeeColor,
  //onPrimary: Color(FROTHY_WHITE),
  seedColor: primaryCoffeeColor,
);

final ThemeData themeData = ThemeData(
  colorScheme: colorScheme,
  useMaterial3: true,
  textTheme: GoogleFonts.latoTextTheme(),
);
