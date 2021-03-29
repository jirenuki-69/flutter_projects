import 'package:ebodasmovil/constants/const.dart';
import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 70,
      margin: const EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              '$iconPath/LeftFlower.png',
              fit: BoxFit.contain,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Info del Proveedor',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Image.asset(
              '$iconPath/RightFlower.png',
              fit: BoxFit.contain,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ],
      ),
    );
  }
}