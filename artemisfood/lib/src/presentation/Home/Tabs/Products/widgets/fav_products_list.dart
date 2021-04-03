import 'package:artemisfood/src/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../home_controller.dart';
import 'fav_product_list_item.dart';

class FavProductsList extends StatefulWidget {
  FavProductsList({
    Key key,
  }) : super(key: key);

  @override
  _FavProductsListState createState() => _FavProductsListState();
}

class _FavProductsListState extends State<FavProductsList> {
  final controller = Get.find<HomeController>();
  PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.7,
  );
  double page = 0;

  void _onScroll() {
    setState(() {
      page = _pageController.page;
    });
  }

  @override
  void initState() {
    _pageController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_onScroll);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      child: Obx(() {
        if (controller.favProductsStatus.value == FavProductsStatus.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (controller.products.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Usted no cuenta con \nfavoritos',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              PrimaryButton(
                onPress: () => {},
                widthFactor: 0.6,
                text: 'Explorar',
              ),
            ],
          );
        }
        return PageView.builder(
          controller: _pageController,
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            final producto = controller.products[index];
            double percent = 1 - ((page - index).abs() * 0.2);
            return Transform.scale(
              scale: percent,
              child: FavProductListItem(
                producto: producto,
              ),
            );
          },
        );
      }),
    );
  }
}
