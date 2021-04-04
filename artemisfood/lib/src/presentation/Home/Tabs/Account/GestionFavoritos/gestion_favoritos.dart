import 'package:artemisfood/src/presentation/Home/Tabs/Account/widgets/account_back_button.dart';
import 'package:flutter/material.dart';

class GestionFavoritosScreen extends StatelessWidget {
  const GestionFavoritosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Text(
            'Gestionar favs',
          ),
        ),
        AccountBackButton(),
      ],
    );
  }
}
