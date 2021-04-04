import 'package:artemisfood/src/domain/models/producto.dart';
import 'package:artemisfood/src/domain/models/usuario.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/domain/repositories/products_repository_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum FavProductsStatus {
  initial,
  loading,
}

class HomeController extends GetxController {
  //Home Screen Bussiness Logic
  HomeController({
    this.localRepositoryInterface,
    this.productsRepositoryInterface,
  });

  @override
  void onInit() {
    pageController.addListener(_onScroll);
    super.onInit();
  }

  @override
  void onReady() {
    loadUser();
    getProducts();
    super.onReady();
  }

  final LocalRepositoryInterface localRepositoryInterface;
  final ProductsRepositoryInterface productsRepositoryInterface;

  final pageController = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );
  final searchTextController = TextEditingController();

  //Listenables
  Rx<Usuario> user = Usuario(
    name: '',
    username: '',
    image: '',
  ).obs;
  RxList<Producto> products = <Producto>[].obs;
  Rx<FavProductsStatus> favProductsStatus = FavProductsStatus.initial.obs;
  RxInt currentBottomNavIdx = 0.obs;
  RxInt selectedCategory = 0.obs;

  void _onScroll() {
    changeCurrentBottomNavIdx(
      pageController.page.toInt(),
    );
  }

  void loadUser() async {
    final res = await localRepositoryInterface.getUser();
    user(res);
  }

  void getProducts() async {
    favProductsStatus(FavProductsStatus.loading);
    final res = await productsRepositoryInterface.getProducts();
    products.value = res;
    favProductsStatus(FavProductsStatus.initial);
  }

  void scrollToIndexScreen(int index) {
    if (index != currentBottomNavIdx.value) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void changeCurrentBottomNavIdx(int index) => currentBottomNavIdx(index);

  void changeSelectedCategory(int index) => selectedCategory(index);
}
