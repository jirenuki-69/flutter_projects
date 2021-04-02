import 'package:artemisfood/src/presentation/main_binding.dart';
import 'package:artemisfood/src/presentation/routes/artemisfood_navigation.dart';
import 'package:artemisfood/src/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      primaryColor: ArtemisFoodColors.primaryColor,
      accentColor: ArtemisFoodColors.primaryColor,
      scaffoldBackgroundColor: ArtemisFoodColors.lightColor,
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
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artemis Food Mobile',
      theme: lightTheme,
      initialRoute: ArtemisFoodRoutes.splashScreen,
      getPages: ArtemisFoodPages.pages,
      initialBinding: MainBinding(), // Inyectar dependencias
    );
  }
}
