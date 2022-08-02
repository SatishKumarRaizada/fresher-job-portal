import 'package:flutter/material.dart';
import 'package:hire_me/theme/colors.dart';

Future<DateTime?> myDatePicker(
  BuildContext context,
  DateTime init,
  DateTime min,
  DateTime max,
) {
  return showDatePicker(
    context: context,
    firstDate: min,
    initialDate: init,
    lastDate: max,
    builder: (context, child) {
      // Theming the date picker
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: AppColors.appColor,
          // Changing the dialogue radius theme
          dialogTheme: const DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
          ),
          textTheme: const TextTheme(
            // Big header date text example --> Sat, Jul 16
            headline4: TextStyle(
              fontSize: 48,
              letterSpacing: 0,
              fontFamily: 'MaerskText',
            ),
            // Month and year text styles --> July 2022
            subtitle2: TextStyle(
              fontSize: 20,
              letterSpacing: 0.15,
              fontFamily: 'MaerskText',
            ),
            // Button style OK and Cancel --> CANCEL OK
            button: TextStyle(
              fontSize: 18,
              letterSpacing: 1.25,
              fontFamily: 'MaerskTextBold',
            ),
            // Dates text styles --> 1,2,3,4....29,30,31
            caption: TextStyle(
              fontSize: 16,
              letterSpacing: 0.4,
              fontFamily: 'MaerskText',
            ),
            // Select date text style --> SELECT DATE
            overline: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              fontFamily: 'MaerskTextHeadlineLight',
            ),
          ),
          iconTheme: const IconThemeData(size: 30),
          colorScheme: ColorScheme.light(
            primary: AppColors.appColor, // header background color
            onPrimary: AppColors.appWhite, // header text color
            onSurface: AppColors.appBlack, // body text color
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: AppColors.appColor, // button text color
            ),
          ),
        ),
        child: child!,
      );
    },
  );
}
