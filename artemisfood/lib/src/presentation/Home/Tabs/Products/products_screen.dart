import 'package:flutter/material.dart';

import 'widgets/categories_list.dart';
import 'widgets/custom_sliver_presistent_header.dart';
import 'widgets/fav_products_list.dart';
import 'widgets/general_products_list.dart';
import 'widgets/seccion.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final _separator = const SizedBox(height: 20.0);
    final double _appBarHeight = _statusBarHeight + kToolbarHeight * 2;
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomSliverPersistentHeader(
            minExtent: _appBarHeight,
            maxExtent: _appBarHeight,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Seccion(title: 'Tus Favoritos'),
                    _separator,
                    FavProductsList(),
                    _separator,
                    Seccion(title: 'Nuestros productos'),
                    CategoriesList(),
                    GeneralProductsList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
