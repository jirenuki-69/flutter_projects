import 'package:ebodasmovil/constants/const.dart';
import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Image.asset(
          '$imgPath/Logo.png',
          color: Theme.of(context).primaryColorLight,
          fit: BoxFit.contain,
          width: width * 0.7,
          height: 110,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
