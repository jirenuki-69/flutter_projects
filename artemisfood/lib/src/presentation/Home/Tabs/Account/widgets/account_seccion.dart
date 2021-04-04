import 'package:flutter/material.dart';

class AccountSeccion extends StatelessWidget {
  const AccountSeccion({
    Key key,
    @required this.text,
    @required this.leadingIcon,
    @required this.onPress,
  }) : super(key: key);

  final String text;
  final IconData leadingIcon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final iconSize = 30.0;
    return Container(
      height: 80.0,
      child: TextButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  leadingIcon,
                  size: iconSize,
                ),
                const SizedBox(width: 15.0),
                Text(
                  text,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: iconSize,
            ),
          ],
        ),
      ),
    );
  }
}
