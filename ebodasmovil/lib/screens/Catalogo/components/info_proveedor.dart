import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/Catalogo/components/header_info.dart';
import 'package:ebodasmovil/screens/Catalogo/components/seccion_imagenes.dart';
import 'package:ebodasmovil/screens/components/primary_button.dart';
import 'package:ebodasmovil/screens/components/seccion.dart';
import 'package:ebodasmovil/screens/components/seccion_categoria.dart';
import 'package:ebodasmovil/screens/components/secondary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoProveedor extends StatefulWidget {
  const InfoProveedor({
    Key key,
    this.proveedor,
  }) : super(key: key);

  final Proveedor proveedor;

  @override
  _InfoProveedorState createState() => _InfoProveedorState();
}

class _InfoProveedorState extends State<InfoProveedor> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _fadeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    )..addListener(() {
      setState(() {
        // The state that has changed here is the animation object’s value.
      });
    });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double buttonSize = width * 0.6;
    return Opacity(
      opacity: _fadeAnimation.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HeaderInfo(),
          Seccion(
            title: 'Nombre',
            content: widget.proveedor.nombre,
          ),
          Seccion(
            title: 'Descripción',
            content: widget.proveedor.descripcion,
          ),
          SeccionCategorias(
            categorias: widget.proveedor.categoria,
          ),
          SeccionImagenes(
            proveedor: widget.proveedor,
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
      ),
    );
  }
}
