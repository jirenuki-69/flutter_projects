import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/route_builder.dart';
import 'package:ebodasmovil/screens/Catalogo/catalogo.dart';
import 'package:ebodasmovil/screens/Home/components/add_button.dart';
import 'package:ebodasmovil/screens/Home/components/no_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/proveedor_item.dart';

class Portafolio extends StatefulWidget {
  const Portafolio({Key key}) : super(key: key);

  @override
  _PortafolioState createState() => _PortafolioState();
}

class _PortafolioState extends State<Portafolio> {
  ScrollController _scrollController;
  double offSetPerItem = 0;
  bool loading = true;
  final double itemHeight = 180.0;

  void _onScroll() {
    setState(() {
      offSetPerItem = _scrollController.offset / itemHeight;
    });
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
    _scrollController = new ScrollController()..addListener(_onScroll);
    super.initState();
  } 

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AddButton(
          onPress: () => Navigator.push(
            context,
            CustomPageRouteBuilder(
              page: Catalogo(),
              routeName: Catalogo.routeName,
            ),
          ),
          text: 'Buscar proveedor',
        ),
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: portafolio.length,
            itemBuilder: (_, index) {
              final Proveedor proveedor = portafolio[index];
              double opacity = 1.0;

              opacity = index + 1 - offSetPerItem;

              if (opacity > 1)
                opacity = 1;
              else if (opacity < 0) opacity = 0;

              return Opacity(
                opacity: opacity,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.identity()
                    ..scale(
                      opacity.clamp(
                        0.2,
                        1,
                      ),
                      opacity,
                    ),
                  child: ProveedorItem(
                    proveedor: proveedor,
                    itemHeight: itemHeight,
                  ),
                ),
              );
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
