import 'package:artemisfood/src/presentation/Home/home.dart';
import 'package:artemisfood/src/presentation/Login/login.dart';
import 'package:artemisfood/src/presentation/SignUp/sign_up.dart';
import 'package:artemisfood/src/presentation/Splash/splash_screen.dart';
import 'package:get/get.dart';

class ArtemisFoodRoutes {
  static final String splashScreen = '/splash';
  static final String loginScreen = '/Login';
  static final String signUpScreen = '/SignUp';
  static final String homeScreen = '/Home';
}

class ArtemisFoodPages {
  static final pages = [
    GetPage(
      name: ArtemisFoodRoutes.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: ArtemisFoodRoutes.loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: ArtemisFoodRoutes.signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: ArtemisFoodRoutes.homeScreen,
      page: () => HomeScreen(),
    ),
  ];
}
