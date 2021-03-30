import 'package:ebodasmovil/screens/Account/components/switcher_mode.dart';
import 'package:ebodasmovil/screens/components/form_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/text_input_title.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormTemplate(
          onMainPress: () => {
            print('Guardando cambios...')
          },
          onSecondaryPress: () => Navigator.pop(context),
          mainButtonText: 'Guardar',
          secondaryButtonText: 'Regresar',
          children: <Widget>[
            TextInputTitle(
              title: 'Nombre(s)',
              icon: Icons.person,
              keyboardType: TextInputType.text,
              onSubmit: (val) => {},
            ),
            TextInputTitle(
              title: 'Apellido(s)',
              icon: Icons.person,
              keyboardType: TextInputType.text,
              onSubmit: (val) => {},
            ),
            TextInputTitle(
              title: 'Nombre(s) de la pareja',
              icon: CupertinoIcons.person_2_alt,
              keyboardType: TextInputType.text,
              onSubmit: (val) => {},
            ),
            TextInputTitle(
              title: 'Apellido(s) de la pareja',
              icon: CupertinoIcons.person_2_alt,
              keyboardType: TextInputType.text,
              onSubmit: (val) => {},
            ),
            TextInputTitle(
              title: 'Teléfono',
              icon: CupertinoIcons.device_phone_portrait,
              keyboardType: TextInputType.number,
              onSubmit: (val) => {},
            ),
            TextInputTitle(
              title: 'Fecha de la boda',
              icon: CupertinoIcons.calendar,
              keyboardType: TextInputType.text,
              onSubmit: (val) => {},
            ),
            TextInputTitle(
              title: 'Presupuesto',
              icon: CupertinoIcons.money_dollar,
              keyboardType: TextInputType.number,
              onSubmit: (val) => {},
            ),
            SwitcherMode(),
          ],
        cancelButton: true,
        onCancelPress: () => {},
        cancelButtonText: 'Cerrar Sesión',
      ),
    );
  }
}
