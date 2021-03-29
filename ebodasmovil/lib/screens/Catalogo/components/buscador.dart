import 'package:ebodasmovil/screens/components/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buscador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: TextInput(
        icon: CupertinoIcons.search,
        hintText: 'Buscar Proveedor',
        onSubmit: (val) => {},
      ),
    );
  }
}