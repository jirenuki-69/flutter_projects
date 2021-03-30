import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/form_template.dart';

class FormularioCita extends StatefulWidget {
  const FormularioCita({Key key}) : super(key: key);
  static String routeName = '/FormularioCitas';

  @override
  _FormularioCitaState createState() => _FormularioCitaState();
}

class _FormularioCitaState extends State<FormularioCita> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _timeController = TextEditingController();
  TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _separator = const SizedBox(height: 30);
    return Scaffold(
      body: FormTemplate(
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
                      color: Theme.of(context).iconTheme.color,
                    ),
                    alignLabelWithHint: true,
                    hintText: 'El título de la cita...',
                    labelText: 'Asunto',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Tiene que introducir un asunto a la cita';
                    }
                    return null;
                  },
                ),
                _separator,
                InputDatePickerFormField(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(DateTime.now().year + 10),
                  onDateSubmitted: (date) => {},
                  errorFormatText: 'Fecha no válida',
                  // Días que no se puedan ??
                  selectableDayPredicate: (day) => true,
                ),
                _separator,
                InkWell(
                  onTap: () => showTimePicker(
                    context: context,
                    initialTime: _selectedTime == null
                      ? TimeOfDay.now()
                      : _selectedTime,
                  ).then((time) {
                    setState(() {
                      _selectedTime = time;
                      _timeController.text = _selectedTime.format(context);
                    });
                  }),
                  child: IgnorePointer(
                    child: TextFormField(
                      controller: _timeController,
                      readOnly: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.timer_fill,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        alignLabelWithHint: true,
                        labelText: 'Hora',
                      ),
                      validator: (value) {
                        if (_selectedTime == null) {
                          return 'Tiene que especificar una hora en la cita';
                        }
                        return null;
                      },
                    ),
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
        onMainPress: () {
          if (_formKey.currentState.validate()) {
            // Process data.
          }
        },
        onSecondaryPress: () => Navigator.pop(context),
        mainButtonText: 'Solicitar',
        secondaryButtonText: 'Regresar',
      ),
    );
  }
}
