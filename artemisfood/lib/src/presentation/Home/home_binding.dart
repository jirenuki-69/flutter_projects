import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        localRepositoryInterface: Get.find(),
        productsRepositoryInterface: Get.find(),
      ),
    );
  }
}