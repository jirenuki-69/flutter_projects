import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/cart_list.dart';

class CartScreen extends GetWidget<HomeController> {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Carrito de compras',
          style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CartList(),
        ],
      ),
    );
  }
}
