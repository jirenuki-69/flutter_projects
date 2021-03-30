import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/Catalogo/catalogo.dart';
import 'package:ebodasmovil/screens/components/error_image.dart';
import 'package:flutter/material.dart';

class ListaProveedores extends StatefulWidget {
  @override
  _ListaProveedoresState createState() => _ListaProveedoresState();
}

class _ListaProveedoresState extends State<ListaProveedores> {
  PageController _pageController = new PageController(
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
    final catalogoBloc = CatalogoInheritedWidget.of(context).catalogoBloc;
    final _textSeparator = const SizedBox(height: 5);
    return Container(
      height: 225,
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: PageView.builder(
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        itemCount: portafolio.length,
        itemBuilder: (_, index) {
          final Proveedor proveedor = portafolio[index];
          double percent = 1 - ((page - index).abs() * 0.2);
          return Transform.scale(
            scale: percent,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: InkWell(
                onTap: () => catalogoBloc.cambioProveedor(proveedor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          image: NetworkImage(proveedor.imagenes[2]),
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
                    _textSeparator,
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    proveedor.nombre,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    proveedor.categoria.first,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                          color: Theme.of(context).accentColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    textAlign: TextAlign.right,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _textSeparator,
                          Expanded(
                            flex: 2,
                            child: Text(
                              proveedor.descripcion,
                              style: Theme.of(context).textTheme.overline.copyWith(
                                letterSpacing: 0.5,
                              ),
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
