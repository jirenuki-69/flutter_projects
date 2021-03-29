import 'package:ebodasmovil/route_builder.dart';
import 'package:ebodasmovil/screens/DetallesProveedor/detalles_proveedor.dart';
import 'package:ebodasmovil/screens/components/error_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../models/Proveedor.dart';

class ProveedorItem extends StatelessWidget {
  const ProveedorItem({
    Key key,
    @required this.proveedor,
    @required this.itemHeight,
  }) : super(key: key);

  final Proveedor proveedor;
  final double itemHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            proveedor.categoria.first,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: TextButton(
              onPressed: () => Navigator.push(
                context,
                CustomPageRouteBuilder(
                  routeName: DetallesProveedor.routeName,
                  page: DetallesProveedor(),
                  arguments: proveedor,
                ),
              ),
              style: Theme.of(context).textButtonTheme.style.copyWith(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(0),
                    ),
                    overlayColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Hero(
                        tag: Key(proveedor.id),
                        child: Image(
                          image: NetworkImage(
                            proveedor.imagenes[1],
                          ),
                          loadingBuilder: (context, child, progress) {
                            if (progress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: (progress.expectedTotalBytes != null
                                    ? (progress.cumulativeBytesLoaded /
                                        progress.expectedTotalBytes)
                                    : null),
                              ),
                            );
                          },
                          errorBuilder: (_, __, ___) {
                            return ErrorImage();
                          },
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Text(
                        proveedor.descripcion,
                        style: Theme.of(context).textTheme.overline.copyWith(
                              height: 1.5,
                              letterSpacing: .5,
                              fontWeight: FontWeight.w200,
                            ),
                        textAlign: TextAlign.left,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
