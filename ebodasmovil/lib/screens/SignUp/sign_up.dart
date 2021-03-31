import 'package:ebodasmovil/screens/components/form_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);
  static String routeName = '/SignUp';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool obscure;

  @override
  void initState() {
    obscure = true;
    super.initState();
  }

  void _changeVisibility() {
    setState(() {
      obscure = !obscure;
    });
  }

  String _validatePassword(String value) {
    String restricion = r'^(?=.*[0-9])(?=.*[!@#$%^&*]).{7,}$';
    RegExp regularExpression = RegExp(restricion);

    if (!regularExpression.hasMatch(value)) {
      return 'La contraseña debe de tener mínimo 7 caracteres. 1 número y un carácter especial incluidos';
    }
  }

  @override
  Widget build(BuildContext context) {
    final _separator = const SizedBox(height: 30);
    return Scaffold(
      body: FormTemplate(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    hintText: 'Nombre(s)',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingrese su nombre por favor';
                    }
                    return null;
                  },
                ),
                _separator,
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    hintText: 'Apellido(s)',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingrese sus apellidos por favor';
                    }
                    return null;
                  },
                ),
                _separator,
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.person_2_fill,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    hintText: 'Nombre(s) de la pareja',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingrese el nombre de su pareja por favor';
                    }
                    return null;
                  },
                ),
                _separator,
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.person_2_fill,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    hintText: 'Apellido(s) de la pareja',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingrese los apellidos de su pareja por favor';
                    }
                    return null;
                  },
                ),
                _separator,
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_sharp,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    hintText: 'Correo electrónico',
                  ),
                ),
                _separator,
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android_sharp,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    hintText: 'Número de teléfono',
                  ),
                ),
                _separator,
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: obscure,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_sharp,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    suffixIcon: IconButton(
                      onPressed: _changeVisibility,
                      icon: Icon(
                        obscure
                            ? Icons.visibility_sharp
                            : Icons.visibility_off_sharp,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                    hintText: 'Contraseña',
                    errorMaxLines: 10,
                  ),
                  validator: _validatePassword,
                ),
                _separator,
              ],
            ),
          ),
        ],
        mainButtonText: 'Comenzar',
        secondaryButtonText: 'Regresar',
        onMainPress: () {
          if (_formKey.currentState.validate()) {
            // Process data.
          }
        },
        onSecondaryPress: () => {
          Navigator.of(context).pop(),
        },
      ),
    );
  }
}
