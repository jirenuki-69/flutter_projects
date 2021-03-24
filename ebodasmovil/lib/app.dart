import 'dart:ui';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/Citas/citas.dart';
import 'screens/Home/home.dart';
import 'screens/Login/login.dart';
import 'screens/Portafolio/portafolio.dart';
import 'screens/Recomendaciones/recomendaciones.dart';
import 'screens/SignUp/sign_up.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _lightBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.solid,
      ),
    );
    final _darkBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
        color: EbodasColors.light,
        width: 2,
        style: BorderStyle.solid,
      ),
    );

    final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColorLight: Colors.black,
      scaffoldBackgroundColor: EbodasColors.light,
      primaryColor: EbodasColors.primary,
      accentColor: EbodasColors.secondary,
      backgroundColor: EbodasColors.light,
      textTheme: GoogleFonts.openSansTextTheme().apply(
        displayColor: EbodasColors.text,
        bodyColor: EbodasColors.text,
        decorationColor: EbodasColors.secondary,
        decorationStyle: TextDecorationStyle.solid,
      ),
      iconTheme: IconThemeData(
        color: EbodasColors.text,
        size: 24,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: EbodasColors.primary,
          onPrimary: EbodasColors.text,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: EbodasColors.light,
          onSurface: EbodasColors.text,
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(5.0),
            side: BorderSide(
              color: EbodasColors.secondary,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        hintStyle: TextStyle(
          color: EbodasColors.text,
          fontSize: 14,
        ),
        border: _lightBorder,
        enabledBorder: _lightBorder,
        focusedBorder: _lightBorder,
      ),
    );
    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColorLight: EbodasColors.light,
      scaffoldBackgroundColor: EbodasColors.dark,
      primaryColor: EbodasColors.primaryDark,
      accentColor: EbodasColors.primaryDark,
      backgroundColor: EbodasColors.dark,
      textTheme: GoogleFonts.openSansTextTheme().apply(
        displayColor: EbodasColors.light,
        bodyColor: EbodasColors.light,
        decorationColor: EbodasColors.secondary,
        decorationStyle: TextDecorationStyle.solid,
      ),
      iconTheme: IconThemeData(
        color: EbodasColors.light,
        size: 24,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: EbodasColors.primaryDark,
          onPrimary: EbodasColors.text,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: EbodasColors.dark,
          onSurface: EbodasColors.light,
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(5.0),
            side: BorderSide(
              color: EbodasColors.light,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        hintStyle: TextStyle(
          color: EbodasColors.light,
          fontSize: 14,
        ),
        border: _darkBorder,
        enabledBorder: _darkBorder,
        focusedBorder: _darkBorder,
      ),
    );
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return MaterialApp(
      title: 'Ebodas Móvil',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => LoginScreen(),
        '/Signup': (context) => SignUpScreen(),
        '/Home': (context) => HomeScreen(),
        '/Home/Portafolio': (context) => Portafolio(),
        '/Home/Recomendaciones': (context) => Recomendaciones(),
        '/Home/Citas': (context) => Citas(),
      },
    );
  }
}
