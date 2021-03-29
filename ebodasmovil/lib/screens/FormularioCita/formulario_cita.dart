import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/form_template.dart';

// TODO: Date Picker

class FormularioCita extends StatefulWidget {
  const FormularioCita({Key key}) : super(key: key);
  static String routeName = '/FormularioCitas';

  @override
  _FormularioCitaState createState() => _FormularioCitaState();
}

class _FormularioCitaState extends State<FormularioCita> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _separator = const SizedBox(height: 30);
    return Scaffold(
      body: FormTemplate(
        onMainPress: () => {},
        onSecondaryPress: () => Navigator.pop(context),
        mainButtonText: 'Solicitar',
        secondaryButtonText: 'Regresar',
        children: <Widget>[
          Text(
            'Solicitud de Cita',
            style: Theme.of(context).textTheme.headline5.copyWith(
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          _separator,
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.mail_solid,
                    ),
                    alignLabelWithHint: true,
                    hintText: 'El título de la cita...',
                    labelText: 'Asunto',
                  ),
                ),
                _separator,
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.calendar,
                    ),
                    alignLabelWithHint: true,
                    hintText: 'Fecha deseada de la cita...',
                    labelText: 'Fecha',
                  ),
                ),
                _separator,
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.timer_fill,
                    ),
                    alignLabelWithHint: true,
                    hintText: 'Hora deseada de la cita...',
                    labelText: 'Hora',
                  ),
                ),
                _separator,
                TextFormField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: 'El por qué de la cita',
                    labelText: 'Cuerpo',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                  ),
                ),
                _separator,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
