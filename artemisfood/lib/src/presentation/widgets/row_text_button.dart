import 'package:flutter/material.dart';

class RowTextButton extends StatelessWidget {
  const RowTextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        bottom: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '¿Nuevo usuario?',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TextButton(
            onPressed: () => {},
            child: Text(
              'Regístrate',
            ),
          ),
        ],
      ),
    );
  }
}