import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/Catalogo/components/header_info.dart';
import 'package:ebodasmovil/screens/Catalogo/components/seccion_imagenes.dart';
import 'package:ebodasmovil/screens/components/primary_button.dart';
import 'package:ebodasmovil/screens/components/seccion.dart';
import 'package:ebodasmovil/screens/components/seccion_categoria.dart';
import 'package:ebodasmovil/screens/components/secondary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../catalogo.dart';

class InfoProveedor extends StatelessWidget {
  const InfoProveedor({
    Key key,
    this.proveedor,
  }) : super(key: key);

  final Proveedor proveedor;

  @override
  Widget build(BuildContext context) {
    final catalogoBloc = CatalogoInheritedWidget.of(context).catalogoBloc;
    return AnimatedBuilder(
      animation: catalogoBloc,
      builder: (context, _) {
        final proveedor = catalogoBloc.proveedorSeleccionado;
        final width = MediaQuery.of(context).size.width;
        final double buttonSize = width * 0.6;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HeaderInfo(),
            Seccion(
              title: 'Nombre',
              content: proveedor.nombre,
            ),
            Seccion(
              title: 'Descripción',
              content: proveedor.descripcion,
            ),
            SeccionCategorias(
              categorias: proveedor.categoria,
            ),
            SeccionImagenes(
              proveedor: proveedor,
            ),
            PrimaryButton(
              onPressed: () => {},
              text: 'Guardar al portafolio',
              width: buttonSize,
            ),
            SecondaryButton(
              onPressed: () => Navigator.pop(context),
              text: 'Regresar',
              width: buttonSize,
            ),
          ],
        );
      },
    );
  }
}
