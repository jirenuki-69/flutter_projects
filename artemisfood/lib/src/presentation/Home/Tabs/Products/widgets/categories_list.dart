import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({
    Key key,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final List<String> temporalCategories = <String>[
      'Todos',
      'Hamburguesas',
      'Pastas',
      'Pollos',
      'Pizzas',
      'Postres',
      'Papas Fritas',
      'Refrescos',
      'Especiales',
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      child: Container(
        height: 40.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: temporalCategories.length,
          itemBuilder: (context, index) {
            final categoria = temporalCategories[index];
            return TextButton(
              onPressed: () {
                controller.changeSelectedCategory(index);
              },
              child: Obx(
                () => Text(
                  categoria,
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: controller.selectedCategory.value == index
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
