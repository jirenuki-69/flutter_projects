import 'package:ebodasmovil/constants/categorias.dart';
import 'package:ebodasmovil/screens/Catalogo/catalogo.dart';
import 'package:flutter/material.dart';

class ListaCategorias extends StatelessWidget {
  const ListaCategorias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final catalogoBloc = CatalogoInheritedWidget.of(context).catalogoBloc;
    final double _separation = 20.0;
    return AnimatedBuilder(
      animation: catalogoBloc,
      builder: (context, _) {
        return Container(
          height: 25,
          margin: EdgeInsets.only(
            bottom: 20.0,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => catalogoBloc.cambiarCategoria('Todos'),
                child: Text(
                  'Todos',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.w600,
                    color: (catalogoBloc.categoriaSeleccionada == 'Todos'
                        ? Theme.of(context).accentColor
                        : null),
                  ),
                ),
              ),
              SizedBox(width: _separation / 2),
              Container(
                width: 1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).iconTheme.color, width: 1),
                ),
              ),
              SizedBox(width: _separation / 2),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorias.length,
                  itemBuilder: (context, index) {
                    final String categoria = categorias[index];
                    return Center(
                      child: InkWell(
                        onTap: () => catalogoBloc.cambiarCategoria(categoria),
                        child: Text(
                          categoria,
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w600,
                            color:
                              (catalogoBloc.categoriaSeleccionada == categoria
                                  ? Theme.of(context).accentColor
                                  : null),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: _separation,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
