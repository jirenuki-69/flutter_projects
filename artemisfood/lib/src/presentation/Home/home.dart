import 'package:artemisfood/src/presentation/Home/Tabs/Account/account_screen.dart';
import 'package:artemisfood/src/presentation/Home/Tabs/Cart/cart_screen.dart';
import 'package:artemisfood/src/presentation/Home/Tabs/Products/products_screen.dart';
import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 8.0,
            onTap: (i) {
              controller.scrollToIndexScreen(i);
              controller.changeCurrentBottomNavIdx(i);
            },
            currentIndex: controller.currentBottomNavIdx.value,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Productos',
                icon: Icon(
                  Icons.shopping_bag,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Carrito',
                icon: Icon(
                  Icons.shopping_cart,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Cuenta',
                icon: Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
          body: PageView(
            controller: controller.pageController,
            children: <Widget>[
              ProductsScreen(),
              CartScreen(),
              AccountScreen(),
            ],
          ),
        );
      },
    );
  }
}
