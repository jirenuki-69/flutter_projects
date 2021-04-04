import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  //Account Screen Bussiness Logic
  AccountController({
    this.localRepositoryInterface,
    this.apiRepositoryInterface,
  });
  
  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  RxInt currentConfigurationScreen = 0.obs;

  void changeConfigurationScreenIndex(int index) {
    currentConfigurationScreen(index);
  }
}