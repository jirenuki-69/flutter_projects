import 'dart:ui';
import 'package:ebodasmovil/bloc/ebodas_bloc.dart';
import 'package:ebodasmovil/screens/Account/components/switcher_mode.dart';
import 'package:ebodasmovil/screens/Catalogo/catalogo.dart';
import 'package:ebodasmovil/screens/DetallesProveedor/detalles_proveedor.dart';
import 'package:ebodasmovil/screens/FormularioCita/formulario_cita.dart';
import 'package:ebodasmovil/screens/ImagenesProveedor/imagenes_proveedor.dart';
import 'package:ebodasmovil/screens/SplashScreen/splash_screen.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/Home/home.dart';
import 'screens/Login/login.dart';
import 'screens/SignUp/sign_up.dart';
import 'theme.dart';

// TODO: Date Picker XD

class MyApp extends StatelessWidget {

  final ebodasBloc = EbodasBloc();

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
      errorColor: EbodasColors.red,
      scaffoldBackgroundColor: EbodasColors.light,
      primaryColor: EbodasColors.primary,
      accentColor: EbodasColors.secondary,
      backgroundColor: EbodasColors.light,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
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
        labelStyle: TextStyle(
          fontSize: 16,
          color: EbodasColors.text,
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.symmetric(horizontal: 0),
        unselectedLabelColor: EbodasColors.text,
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
        ),
        labelStyle: TextStyle(
          color: EbodasColors.text,
          fontSize: 14,
        ),
        labelColor: EbodasColors.secondary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: EbodasColors.light,
        elevation: 0,
      ),
    );
    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      errorColor: EbodasColors.red,
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
        labelStyle: TextStyle(
          fontSize: 16,
          color: EbodasColors.light,
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.symmetric(horizontal: 0),
        unselectedLabelColor: EbodasColors.light,
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
        ),
        labelStyle: TextStyle(
          color: EbodasColors.light,
          fontSize: 14,
        ),
        labelColor: EbodasColors.primaryDark,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: EbodasColors.dark,
        elevation: 0,
      ),
    );
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return MyInheritedWidget(
      ebodasBloc: ebodasBloc,
      child: AnimatedBuilder(
        animation: ebodasBloc,
        builder: (context, _) {
          return MaterialApp(
            title: 'Ebodas Móvil',
            debugShowCheckedModeBanner: false,
            theme: ebodasBloc.isDarkMode
                    ? darkTheme
                    : lightTheme,
            initialRoute: LoginScreen.routeName,
            routes: {
              SplashScreen.routeName: (context) => SplashScreen(),
              LoginScreen.routeName: (context) => LoginScreen(),
              SignUpScreen.routeName: (context) => SignUpScreen(),
              HomeScreen.routeName: (context) => HomeScreen(),
              DetallesProveedor.routeName: (context) => DetallesProveedor(),
              ImagenesProveedor.routeName: (context) => ImagenesProveedor(),
              FormularioCita.routeName: (context) => FormularioCita(),
              Catalogo.routeName: (context) => Catalogo(),
            },
          );
        }
      ),
    );
  }
}
