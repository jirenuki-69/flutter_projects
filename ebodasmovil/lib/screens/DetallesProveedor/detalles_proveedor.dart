import 'package:ebodasmovil/screens/ImagenesProveedor/imagenes_proveedor.dart';
import 'package:flutter/material.dart';

import '../../models/Proveedor.dart';
import '../components/cancel_button.dart';
import '../components/primary_button.dart';
import '../components/secondary_button.dart';
import 'components/header_delegate.dart';
import '../components/seccion.dart';
import '../components/seccion_categoria.dart';

final double titleContainerSize = 60;

class DetallesProveedor extends StatelessWidget {
  const DetallesProveedor({Key key}) : super(key: key);
  static String routeName = '/DetallesProveedor';

  @override
  Widget build(BuildContext context) {
    final Proveedor proveedor = ModalRoute.of(context).settings.arguments;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: MyPersistenHeaderDelegate(
              title: proveedor.nombre,
              proveedor: proveedor,
              maxExtent: 250,
              minExtent: titleContainerSize + statusBarHeight,
              titleContainerSize: titleContainerSize,
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(
                height: 30,
              ),
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
              PrimaryButton(
                onPressed: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    opaque: true,
                    pageBuilder: (context, animation1, animation2) {
                      return FadeTransition(
                        opacity: animation1,
                        child: ImagenesProveedor(
                          proveedor: proveedor,
                        ),
                      );
                    },
                    transitionDuration: const Duration(
                      milliseconds: 300,
                    ),
                  ),
                ),
                text: 'Ver imágenes',
                width: width * 0.7,
              ),
              SecondaryButton(
                onPressed: () => Navigator.pop(context),
                text: 'Regresar',
                width: width * 0.7,
              ),
              CancelButton(
                onPressed: () => {},
                text: 'Eliminar',
                width: width * 0.5,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
