import 'package:ebodasmovil/screens/Home/components/no_info.dart';
import 'package:flutter/material.dart';

class Recomendaciones extends StatelessWidget {
  const Recomendaciones({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NoInfo(
        message: 'Sin recomendaciones.\nSolicite una cita',
        onPressed: () => {},
        buttonMessage: 'Solicitar una cita',
      ),
    );
  }
}
