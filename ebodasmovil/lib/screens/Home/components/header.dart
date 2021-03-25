import 'package:ebodasmovil/constants/const.dart';
import 'package:ebodasmovil/screens/Account/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bienvenida',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Daniela',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                top: 15,
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => AccountScreen(),
                ),
              ),
                child: Image.asset(
                  '$iconPath/bride.png',
                  width: 50,
                  height: 50,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}