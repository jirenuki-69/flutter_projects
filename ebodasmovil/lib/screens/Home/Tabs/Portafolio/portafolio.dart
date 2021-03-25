import 'package:ebodasmovil/screens/Home/components/no_info.dart';
import 'package:flutter/material.dart';

class Portafolio extends StatelessWidget {
  const Portafolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoInfo(
      message: 'Portafolio vacío.\nBusque en el catálogo',
      onPressed: () => {},
      buttonMessage: 'Ver el catálogo',
    );
  }
}