import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/presentation/routes/artemisfood_navigation.dart';
import 'package:artemisfood/src/presentation/theme.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //Splash Screen Bussiness Logic
  SplashController({
    this.localRepositoryInterface,
    this.apiRepositoryInterface,
  });
  
  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  @override
  void onInit() {
    validateTheme();
    super.onInit();
  }

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  void validateSession() async {
    final token = await localRepositoryInterface.getToken();
    if (token != null) {
      final user = await apiRepositoryInterface.getUserFromToken(token);
      await localRepositoryInterface.saveUser(user);
      await Future.delayed(const Duration(seconds: 2)); //Fake await
      Get.offNamed(ArtemisFoodRoutes.homeScreen);
    } else {
      await Future.delayed(const Duration(seconds: 2)); //Fake await
      Get.offNamed(ArtemisFoodRoutes.loginScreen);
    }
  }

  void validateTheme() async {
    final isDarkMode = await localRepositoryInterface.isDarkMode();
    if (isDarkMode != null) {
      Get.changeTheme(isDarkMode ? darkTheme : lightTheme); //Validate local mode ref
    } else {
      Get.changeTheme(Get.isDarkMode ? darkTheme : lightTheme); //Validate system mode
    }
  }
}
