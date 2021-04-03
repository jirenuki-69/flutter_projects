import 'package:artemisfood/src/domain/models/producto.dart';
import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/products_repository_interface.dart';
import 'package:get/get.dart';

enum FavProductsStatus {
  initial,
  loading,
}

class HomeController extends GetxController {
  //Home Screen Bussiness Logic
  HomeController({
    this.apiRepositoryInterface,
    this.productsRepositoryInterface,
  });

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }
  
  final ApiRepositoryInterface apiRepositoryInterface;
  final ProductsRepositoryInterface productsRepositoryInterface;
  RxList<Producto> products = <Producto>[].obs;
  Rx<FavProductsStatus> favProductsStatus = FavProductsStatus.initial.obs;

  void getProducts() async {
    favProductsStatus(FavProductsStatus.loading);
    final res = await productsRepositoryInterface.getProducts();
    products.value = res;
    favProductsStatus(FavProductsStatus.initial);
  }
}