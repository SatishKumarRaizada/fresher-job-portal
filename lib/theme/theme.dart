import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hire_me/theme/colors.dart';

class AppTheme {
  // Application Light theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.appColor,
    fontFamily: 'HireRegular',
    primarySwatch: AppColors.lightThemeColors,
    scaffoldBackgroundColor: AppColors.appGrey,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.appColor,
      unselectedLabelColor: AppColors.appGrey,
      labelStyle: TextStyle(
        fontSize: 18,
        fontFamily: 'HireRegular',
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        fontFamily: 'HireRegular',
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.appColor,
      refreshBackgroundColor: AppColors.appColor,
      circularTrackColor: AppColors.appWhite,
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedColor: AppColors.appWhite,
      color: AppColors.appWhite,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: AppColors.appColor,
      labelStyle: TextStyle(
        color: AppColors.appWhite,
        fontSize: 14,
        fontFamily: 'HireRegular',
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      iconColor: AppColors.appColor,
      focusColor: AppColors.appColor,
      hintStyle: TextStyle(color: AppColors.appBlack),
      prefixIconColor: AppColors.appBlack,
      contentPadding: const EdgeInsets.all(10),
      filled: true,
      fillColor: AppColors.appGrey,
      suffixIconColor: AppColors.appBlack,
      errorStyle: const TextStyle(
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.appColor, width: 1),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.appBlack,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 18,
        fontFamily: 'HireRegular',
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        fontFamily: 'HireRegular',
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.appBlack,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.appBlack,
      splashColor: AppColors.appBlack,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.appColor,
        primary: AppColors.appWhite,
        elevation: 0.0,
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'HireRegular',
          color: Colors.black,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.appColor,
        padding: const EdgeInsets.all(10),
        backgroundColor: AppColors.appWhite,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: const BorderSide(
          color: AppColors.appColor,
          width: 0.5,
        ),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.appBlack,
      minLeadingWidth: 5,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: AppColors.appColor,
          width: 0.5,
        ),
      ),
    ),
    cardTheme: CardTheme(
      shadowColor: AppColors.appBlack,
      color: AppColors.appWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appWhite,
      elevation: 0.0,
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(
        color: AppColors.appBlack,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'HireRegular',
        fontSize: 22,
        color: AppColors.appBlack,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.appColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 10.0,
      selectedItemColor: AppColors.appWhite,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.shifting,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(
        color: AppColors.appWhite,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
        size: 25,
      ),
    ),
  );

  // Application Dark theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[700],
    fontFamily: 'HireRegular',
    primarySwatch: AppColors.darkThemeColors,
    scaffoldBackgroundColor: AppColors.appBlack,
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedColor: AppColors.appWhite,
    ),
    inputDecorationTheme: InputDecorationTheme(
      iconColor: AppColors.appBlack,
      focusColor: AppColors.appBlack,
      hintStyle: const TextStyle(color: AppColors.appWhite),
      prefixIconColor: AppColors.appWhite,
      contentPadding: const EdgeInsets.all(15),
      filled: true,
      fillColor: AppColors.appBlack,
      suffixIconColor: AppColors.appWhite,
      errorStyle: const TextStyle(
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.appWhite,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 18,
        color: AppColors.appWhite,
        fontFamily: 'HireRegular',
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        color: AppColors.appWhite,
        fontFamily: 'HireRegular',
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.appWhite,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.appWhite,
      splashColor: AppColors.appWhite,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.appWhite,
        padding: const EdgeInsets.all(15),
        backgroundColor: AppColors.appBlack,
        elevation: 0.2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide.none,
        ),
        shadowColor: AppColors.appColor,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.appWhite,
      minLeadingWidth: 5,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: AppColors.appBlack,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.appGrey,
        primary: AppColors.appWhite,
        elevation: 0.0,
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'HireRegular',
          color: Colors.black,
        ),
      ),
    ),
    cardTheme: CardTheme(
      shadowColor: AppColors.appBlack,
      color: AppColors.appBlack,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBlack,
      elevation: 0.0,
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(
        color: AppColors.appWhite,
      ),
      titleTextStyle: const TextStyle(
        fontFamily: 'HireRegular',
        fontSize: 22,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.appWhite,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 10.0,
      selectedItemColor: AppColors.appWhite,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.shifting,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(
        color: AppColors.appWhite,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
        size: 25,
      ),
    ),
  );

  //
}
