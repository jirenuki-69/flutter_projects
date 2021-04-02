import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //Home Screen Bussiness Logic
  HomeController({
    this.apiRepositoryInterface,
  });
  
  final ApiRepositoryInterface apiRepositoryInterface;
}