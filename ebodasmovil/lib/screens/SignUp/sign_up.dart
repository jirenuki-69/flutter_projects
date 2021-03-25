import 'package:ebodasmovil/screens/components/form_template.dart';
import 'package:ebodasmovil/screens/components/logo_header.dart';
import 'package:ebodasmovil/screens/components/text_input.dart';
import 'package:ebodasmovil/screens/components/text_input_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double SPACING = 30;
    return Scaffold(
      body: FormTemplate(
        mainButtonText: 'Comenzar',
        secondaryButtonText: 'Regresar',
        onMainPress: () => {},
        onSecondaryPress: () => {
          Navigator.of(context).pop(),
        },
        children: <Widget>[
          TextInput(
            hintText: 'Nombre(s)',
            icon: Icons.person,
            spacing: SPACING,
            onSubmit: (val) => {},
          ),
          TextInput(
            hintText: 'Apellido(s)',
            icon: Icons.person,
            spacing: SPACING,
            onSubmit: (val) => {},
          ),
          TextInput(
            hintText: 'Usuario',
            icon: Icons.supervised_user_circle_sharp,
            spacing: SPACING,
            onSubmit: (val) => {},
          ),
          TextInput(
            keyboardType: TextInputType.emailAddress,
            hintText: 'Correo electrónico',
            icon: Icons.email_sharp,
            spacing: SPACING,
            onSubmit: (val) => {},
          ),
          TextInputPassword(
            spacing: SPACING,
          ),
          TextInput(
            keyboardType: TextInputType.number,
            hintText: 'Teléfono',
            icon: Icons.phone_android_sharp,
            spacing: SPACING,
            onSubmit: (val) => {},
          ),
        ],
      ),
    );
  }
}
