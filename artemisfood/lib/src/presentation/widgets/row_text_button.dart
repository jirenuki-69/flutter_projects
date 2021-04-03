import 'package:flutter/material.dart';

class RowTextButton extends StatelessWidget {
  const RowTextButton({
    Key key,
    @required this.onPress,
    @required this.leftText,
    @required this.rightText,
  }) : super(key: key);

  final VoidCallback onPress;
  final String leftText;
  final String rightText;

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
            leftText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(width: 5.0),
          TextButton(
            onPressed: onPress,
            child: Text(rightText),
          ),
        ],
      ),
    );
  }
}
