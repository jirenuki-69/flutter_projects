import 'package:artemisfood/src/presentation/Login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(
        apiRepositoryInterface: Get.find(),
        localRepositoryInterface: Get.find(),
      ),
    );
  }
}