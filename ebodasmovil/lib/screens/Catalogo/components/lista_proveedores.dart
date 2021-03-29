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
          // TODO: Hacerlo bien XD
          final Proveedor proveedor = portafolio[index];
          double percent = 1 - ((page - index).abs() * 0.2);
          return Transform(
            transform: Matrix4.identity()
              ..scale(
                1.0,
                percent,
              ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0 * percent,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return InkWell(
                    onTap: () => catalogoBloc.cambioProveedor(proveedor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          child: Image(
                            height: constraints.maxHeight * 0.7,
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
                        const SizedBox(height: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
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
                            ],
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Expanded(
                          flex: 2,
                          child: Text(
                            proveedor.descripcion,
                            style: Theme.of(context).textTheme.overline.copyWith(
                              letterSpacing: 0.5,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
