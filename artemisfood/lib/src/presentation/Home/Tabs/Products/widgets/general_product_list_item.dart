import 'package:artemisfood/src/domain/models/producto.dart';
import 'package:artemisfood/src/presentation/widgets/image_error_placeholder.dart';
import 'package:artemisfood/src/presentation/widgets/image_loading_placeholder.dart';
import 'package:flutter/material.dart';

class GeneralProductListItem extends StatelessWidget {
  const GeneralProductListItem({
    Key key,
    @required this.producto,
  }) : super(key: key);

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0.2, 0.2),
              blurRadius: 12.0,
              spreadRadius: 1.0),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    producto.name,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '\$${producto.price}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
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
            ),
          ),
        ],
      ),
    );
  }
}
