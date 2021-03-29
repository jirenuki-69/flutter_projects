import 'dart:ui';

import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/components/error_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';
import 'components/images_page_view.dart';

class ImagenesProveedor extends StatefulWidget {
  const ImagenesProveedor({
    Key key,
    this.proveedor,
  }) : super(key: key);
  static String routeName = '/ImagenesProveedor';

  final Proveedor proveedor;

  @override
  _ImagenesProveedorState createState() => _ImagenesProveedorState();
}

class _ImagenesProveedorState extends State<ImagenesProveedor> {
  ValueNotifier<double> _notifier = ValueNotifier<double>(0);

  @override
  void dispose() {
    _notifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: AnimatedBuilder(
                animation: _notifier,
                builder: (context, _) {
                  final int imagenIndex = _notifier.value.round();
                  return Image(
                    image: NetworkImage(
                      widget.proveedor.imagenes[imagenIndex],
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
                  );
                },
              ),
            ),
          ),
          ImagesPageView(
            proveedor: widget.proveedor,
            statusBarHeight: statusBarHeight,
            notifier: _notifier,
          ),
          CustomAppBar(
            nombre: widget.proveedor.nombre,
            statusBarHeight: statusBarHeight,
          ),
        ],
      ),
    );
  }
}
