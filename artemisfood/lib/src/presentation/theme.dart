import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtemisFoodColors {
  static Color primaryColor = Color(0xFF4B22A4);
  static Color lightColor = Colors.white;
  static Color darkColor = Color(0xFF383838);
  static Color greyColor = Color(0xFFF4F0F1);
  static Color lightThemeTextColor = Colors.black;
  static Color darkThemeTextColor = Colors.white;
}

final lightTheme = ThemeData(
      primaryColor: ArtemisFoodColors.primaryColor,
      accentColor: ArtemisFoodColors.primaryColor,
      scaffoldBackgroundColor: ArtemisFoodColors.lightColor,
      appBarTheme: AppBarTheme(
        backgroundColor: ArtemisFoodColors.lightColor,
        elevation: 8.0,
      ),
      textTheme: GoogleFonts.montserratTextTheme().apply(
        displayColor: ArtemisFoodColors.lightThemeTextColor,
        bodyColor: ArtemisFoodColors.lightThemeTextColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ArtemisFoodColors.greyColor,
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 15.0),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: ArtemisFoodColors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: ArtemisFoodColors.primaryColor,
        ),
      ),
    );

    final darkTheme = ThemeData(
      primaryColor: ArtemisFoodColors.primaryColor,
      scaffoldBackgroundColor: ArtemisFoodColors.darkColor,
      textTheme: GoogleFonts.montserratTextTheme().apply(
        displayColor: ArtemisFoodColors.darkThemeTextColor,
        bodyColor: ArtemisFoodColors.darkThemeTextColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ArtemisFoodColors.greyColor,
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 15.0),
      ),
      iconTheme: IconThemeData(
        color: ArtemisFoodColors.lightColor,
      ),
    );
