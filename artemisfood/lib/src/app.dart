import 'package:artemisfood/src/presentation/main_binding.dart';
import 'package:artemisfood/src/presentation/routes/artemisfood_navigation.dart';
import 'package:artemisfood/src/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ArtemisFoodColors.primaryColor, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artemis Food Mobile',
      theme: darkTheme,
      initialRoute: ArtemisFoodRoutes.splashScreen,
      getPages: ArtemisFoodPages.pages,
      initialBinding: MainBinding(), // Inyectar dependencias
    );
  }
}
