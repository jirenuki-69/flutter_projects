import 'package:artemisfood/src/presentation/SignUp/sign_up_controller.dart';
import 'package:get/instance_manager.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SignUpController(
        signUpRepositoryInterface: Get.find(),
        localRepositoryInterface: Get.find(),
      ),
    );
  }
}