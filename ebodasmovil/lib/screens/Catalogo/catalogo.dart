import 'package:ebodasmovil/bloc/catalogo_bloc.dart';
import 'package:ebodasmovil/screens/Catalogo/components/info_proveedor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/buscador.dart';
import 'components/lista_categorias.dart';
import 'components/lista_proveedores.dart';

class Catalogo extends StatelessWidget {
  Catalogo({Key key}) : super(key: key);
  static String routeName = '/Catalogo';
  final CatalogoBloc catalogoBloc = CatalogoBloc();

  @override
  Widget build(BuildContext context) {
    return CatalogoInheritedWidget(
      catalogoBloc: catalogoBloc,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Buscador(),
                ListaCategorias(),
                ListaProveedores(),
                InfoProveedor(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CatalogoInheritedWidget extends InheritedWidget {
  CatalogoInheritedWidget({
    @required this.child,
    this.catalogoBloc,
  });

  final Widget child;
  final CatalogoBloc catalogoBloc;
  static CatalogoInheritedWidget of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
