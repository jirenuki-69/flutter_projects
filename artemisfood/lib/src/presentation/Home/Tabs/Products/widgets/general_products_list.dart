import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'general_product_list_item.dart';

class GeneralProductsList extends StatelessWidget {
  GeneralProductsList({
    Key key,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 20.0,
      ),
      child: Obx(() {
        if (controller.products.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(0.0),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            final producto = controller.products[index];
            return Align(
              heightFactor: 0.8,
              child: InkWell(
                onTap: () => {},
                child: GeneralProductListItem(
                  producto: producto,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
