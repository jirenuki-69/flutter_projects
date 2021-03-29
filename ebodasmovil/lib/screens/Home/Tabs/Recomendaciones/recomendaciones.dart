import 'package:ebodasmovil/route_builder.dart';
import 'package:ebodasmovil/screens/FormularioCita/formulario_cita.dart';
import 'package:ebodasmovil/screens/Home/components/no_info.dart';
import 'package:flutter/material.dart';

class Recomendaciones extends StatelessWidget {
  const Recomendaciones({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NoInfo(
        message: 'Sin recomendaciones.\nSolicite una cita',
        onPressed: () => Navigator.push(
          context,
          CustomPageRouteBuilder(
            routeName: FormularioCita.routeName,
            page: FormularioCita(),
          ),
        ),
        buttonMessage: 'Solicitar una cita',
      ),
    );
  }
}
