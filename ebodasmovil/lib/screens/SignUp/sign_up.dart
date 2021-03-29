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

  @override
  Widget build(BuildContext context) {
    final _separator = const SizedBox(height: 30);
    return Scaffold(
      body: FormTemplate(
        mainButtonText: 'Comenzar',
        secondaryButtonText: 'Regresar',
        onMainPress: () => {},
        onSecondaryPress: () => {
          Navigator.of(context).pop(),
        },
        children: <Widget>[
          Form(
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
