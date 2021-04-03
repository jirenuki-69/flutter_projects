import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/custom_sliver_presistent_header.dart';
import 'widgets/products_list.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final _separator = const SizedBox(height: 30.0);
    final double _appBarHeight = _statusBarHeight + 40 + kToolbarHeight;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverPersistentHeader(
              minExtent: _appBarHeight,
              maxExtent: _appBarHeight,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Seccion(title: 'Tus Favoritos'),
                    _separator,
                    ProductsList(),
                    _separator,
                    Seccion(title: 'Nuestros productos'),
                    //TODO: Productos List && Categories List
                    Container(
                      height: 600.0,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Seccion extends StatelessWidget {
  const Seccion({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5.copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
