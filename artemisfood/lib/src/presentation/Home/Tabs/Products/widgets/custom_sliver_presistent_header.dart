import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:artemisfood/src/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class CustomSliverPersistentHeader implements SliverPersistentHeaderDelegate {
  CustomSliverPersistentHeader({
    @required this.minExtent,
    @required this.maxExtent,
    this.searchBarSize = 60.0,
  });

  final double minExtent;
  final double maxExtent;
  final double searchBarSize;
  final controller = Get.find<HomeController>();

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final style = Theme.of(context).textTheme.headline6.copyWith(
          fontWeight: FontWeight.w600,
        );
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10.0),
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Text>[
                  Text(
                    'Artemis',
                    style: style.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'Food',
                    style: style,
                  ),
                ],
              ),
              CustomTextField(
                controller: controller.searchTextController,
                widthFactor: 1,
                spacing: 0.0,
                icon: Icons.search,
                hintText: 'Buscar producto',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  @override
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  TickerProvider get vsync => null;
}
