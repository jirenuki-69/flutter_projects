import 'package:ebodasmovil/constants/categorias.dart';
import 'package:flutter/material.dart';

class ListaCategorias extends StatefulWidget {
  @override
  _ListaCategoriasState createState() => _ListaCategoriasState();
}

class _ListaCategoriasState extends State<ListaCategorias> {
  String categoriaSeleccionada = 'Todos';

  void _cambiarCategoria(String categoriaPresionada) {
    setState(() {
      categoriaSeleccionada = categoriaPresionada;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double _separation = 20.0;
    return Container(
      height: 30,
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () => _cambiarCategoria('Todos'),
            child: Text(
              'Todos',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontWeight: FontWeight.w600,
                color: (
                  categoriaSeleccionada == 'Todos'
                    ? Theme.of(context).accentColor
                    : null
                ),
              ),
            ),
          ),
          SizedBox(width: _separation),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                final String categoria = categorias[index];
                return InkWell(
                  onTap: () => _cambiarCategoria(categoria),
                  child: Text(
                    categoria,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontWeight: FontWeight.w600,
                      color: (
                        categoriaSeleccionada == categoria
                          ? Theme.of(context).accentColor
                          : null
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
}
