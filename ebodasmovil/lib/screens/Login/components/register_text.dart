import 'package:ebodasmovil/screens/SignUp/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          '¿No tienes una cuenta?',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        InkWell(
          onTap: () => {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => SignUpScreen(),
              ),
            ),
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Regístrate',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: Theme.of(context).accentColor,
                decoration: TextDecoration.underline,
                decorationColor: Theme.of(context).accentColor,
                decorationThickness: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
