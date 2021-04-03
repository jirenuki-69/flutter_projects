import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/domain/repositories/products_repository_interface.dart';
import 'package:artemisfood/src/domain/repositories/sign_up_repository.dart';
import 'package:artemisfood/src/infrastructure/data/api_repository_impl.dart';
import 'package:artemisfood/src/infrastructure/data/local_repository_impl.dart';
import 'package:artemisfood/src/infrastructure/data/products_repository_impl.dart';
import 'package:artemisfood/src/infrastructure/data/sign_up_repository_impl.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<ApiRepositoryInterface>(() => ApiRepositoryImpl());
    Get.lazyPut<SignUpRepositoryInterface>(() => SignUpRepositoryImpl());
    Get.lazyPut<ProductsRepositoryInterface>(() => ProductsRepositoryImpl());
  }
}
