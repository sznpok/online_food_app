import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size.dart';

const primaryColor = Color(0xffFFFFFF);
const Color secondaryColor = Color(0xFFFFAD39);
const Color shadowColor = Color(0xFFD7D3D3);
const Color blackColor = Color(0xff000000);

const Color textFormColor = Color(0xFFD9D9D9);
const Color errorColor = Color(0xffDC3545);
const Color textColor = Color(0xff343A40);
const Color textSecondaryColor = Color(0xffA9B4BE);
const Color hintColor = Color(0xff6C757D);

ThemeData theme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
      foregroundColor: primaryColor,
      actionsIconTheme: IconThemeData(
        color: primaryColor,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
    ),
    // cardColor: primaryColor.withOpacity(0.1),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        textStyle: Theme.of(context).textTheme.bodySmall,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      iconSize: SizeConfig.screenHeight,
      foregroundColor: secondaryColor,
    ),
    textTheme: TextTheme(
      displayMedium: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayMedium),
      displaySmall: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displaySmall),
      titleMedium: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.titleMedium),
      labelSmall: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.labelSmall),
      labelMedium: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.labelMedium),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle:
          Theme.of(context).textTheme.bodyLarge!.copyWith(color: hintColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: SizeConfig.screenHeight! * 0.001,
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(
          SizeConfig.screenHeight! * 0.058,
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: SizeConfig.screenHeight! * 0.001,
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(
            SizeConfig.screenHeight! * 0.058,
          )),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: SizeConfig.screenWidth! * 0.001,
          color: errorColor,
        ),
        borderRadius: BorderRadius.circular(
          SizeConfig.screenHeight! * 0.058,
        ),
      ),
    ),
  );
}
