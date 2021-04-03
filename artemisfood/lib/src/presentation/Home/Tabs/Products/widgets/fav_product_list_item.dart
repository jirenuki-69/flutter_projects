import 'package:artemisfood/src/domain/models/producto.dart';
import 'package:artemisfood/src/presentation/widgets/image_error_placeholder.dart';
import 'package:artemisfood/src/presentation/widgets/image_loading_placeholder.dart';
import 'package:flutter/material.dart';

class FavProductListItem extends StatelessWidget {
  const FavProductListItem({
    Key key,
    @required this.producto,
  }) : super(key: key);

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        onTap: () => {},
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: FractionallySizedBox(
                  widthFactor: 1,
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
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text(
                            producto.name,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '\$${producto.price}',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      producto.description,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.caption,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
