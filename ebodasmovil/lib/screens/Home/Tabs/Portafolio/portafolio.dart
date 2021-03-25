import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/Home/components/add_button.dart';
import 'package:ebodasmovil/screens/Home/components/no_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Portafolio extends StatelessWidget {
  const Portafolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AddButton(
          onPress: () => {},
          text: 'Buscar proveedor',
        ),
        Expanded(
          child: ListView.builder(
          itemCount: portafolio.length,
          itemBuilder: (_, index) {
              final Proveedor proveedor = portafolio[index];
              return ProveedorItem(proveedor: proveedor);
            },
          ),
        ),
      ],
    );
    // return NoInfo(
    //   message: 'Portafolio vacío.\nBusque en el catálogo',
    //   onPressed: () => {},
    //   buttonMessage: 'Ver el catálogo',
    // );
  }
}

class ProveedorItem extends StatelessWidget {
  const ProveedorItem({
    Key key,
    @required this.proveedor,
  }) : super(key: key);

  final Proveedor proveedor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
              onPressed: () => {},
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
                  Theme.of(context).primaryColor
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image(
                        image: NetworkImage(
                          proveedor.imagenes[2],
                        ),
                        loadingBuilder: (context, child, progress) {
                          if (progress == null) {
                            return child;
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: (
                                progress.expectedTotalBytes != null
                                  ? (progress.cumulativeBytesLoaded 
                                      / progress.expectedTotalBytes)
                                  : null
                              ),
                            ),
                          );
                        },
                        errorBuilder: (context, object, _) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Icon(
                                CupertinoIcons.photo_fill_on_rectangle_fill,
                                color: Theme.of(context).iconTheme.color,
                                size: 24,
                              ),
                              Text(
                                'No image found',
                                style: Theme.of(context).textTheme.caption,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        },
                        fit: BoxFit.cover,
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