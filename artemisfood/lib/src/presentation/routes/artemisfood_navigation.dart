import 'package:artemisfood/src/presentation/Home/home.dart';
import 'package:artemisfood/src/presentation/Home/home_binding.dart';
import 'package:artemisfood/src/presentation/Login/login.dart';
import 'package:artemisfood/src/presentation/Login/login_binding.dart';
import 'package:artemisfood/src/presentation/SignUp/sign_up.dart';
import 'package:artemisfood/src/presentation/SignUp/sign_up_binding.dart';
import 'package:artemisfood/src/presentation/Splash/splash_binding.dart';
import 'package:artemisfood/src/presentation/Splash/splash_screen.dart';
import 'package:artemisfood/src/presentation/main_binding.dart';
import 'package:get/get.dart';

class ArtemisFoodRoutes {
  static final String splashScreen = '/Splash';
  static final String loginScreen = '/Login';
  static final String signUpScreen = '/SignUp';
  static final String homeScreen = '/Home';
}

class ArtemisFoodPages {
  static final pages = [
    GetPage(
      name: ArtemisFoodRoutes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: ArtemisFoodRoutes.loginScreen,
      page: () => LoginScreen(),
      bindings: <Bindings>[
        MainBinding(),
        LoginBinding(),
      ],
    ),
    GetPage(
      name: ArtemisFoodRoutes.signUpScreen,
      page: () => SignUpScreen(),
      bindings: <Bindings>[
        MainBinding(),
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: ArtemisFoodRoutes.homeScreen,
      page: () => HomeScreen(),
      bindings: <Bindings>[
        MainBinding(),
        HomeBinding(),
      ],
    ),
  ];
}
