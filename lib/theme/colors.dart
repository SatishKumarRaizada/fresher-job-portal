import 'package:flutter/material.dart';

class AppColors {
  // Main color codes
  static const Color appColor = Color(0xff425dff);
  static const Color appGrey = Color(0xfff6f6f6);
  static const Color appListBlue = Color(0xff8997f2);
  static const Color appWhite = Color(0xffffffff);
  static Color appBlack = const Color(0xFF303030);

  static MaterialColor darkThemeColors = const MaterialColor(
    0xFF0d0d0d,
    <int, Color>{
      50: Color(0xFFf2f2f2),
      100: Color(0xFFd9d9d9),
      200: Color(0xFFbfbfbf),
      300: Color(0xFFa6a6a6),
      400: Color(0xFF8c8c8c),
      500: Color(0xFF737373),
      600: Color(0xFF595959),
      700: Color(0xFF404040),
      800: Color(0xFF262626),
      900: Color(0xFF0d0d0d),
    },
  );

  static MaterialColor lightThemeColors = const MaterialColor(
    0xFFffffff,
    <int, Color>{
      50: Color(0xFFf6f3f0),
      100: Color(0xFFf6f3f0),
      200: Color(0xFFf6f3f0),
      300: Color(0xFFf6f3f0),
      400: Color(0xFFf6f3f0),
      500: Color(0xFFf6f3f0),
      600: Color(0xFFf6f3f0),
      700: Color(0xFFf6f3f0),
      800: Color(0xFFf6f3f0),
      900: Color(0xFFf6f3f0),
    },
  );
}
