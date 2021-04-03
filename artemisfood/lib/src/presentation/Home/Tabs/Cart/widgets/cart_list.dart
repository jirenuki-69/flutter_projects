import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:artemisfood/src/presentation/widgets/image_error_placeholder.dart';
import 'package:artemisfood/src/presentation/widgets/image_loading_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartList extends StatelessWidget {
  CartList({
    Key key,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.products.length,
      itemBuilder: (context, index) {
        final producto = controller.products[index];
        return ListTile(
          contentPadding: EdgeInsets.all(10.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: NetworkImage(producto.image),
              loadingBuilder: (_, child, progress) {
                if (progress != null) {
                  return ImageLoadingPlaceholder();
                }
                return child;
              },
              errorBuilder: (_, __, ___) {
                return ImageErrorPlaceholder();
              },
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            producto.name,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          subtitle: Text(
            '\$${producto.price}',
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          trailing: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.remove,
                      ),
                    ),
                    Text('3'),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.delete,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
