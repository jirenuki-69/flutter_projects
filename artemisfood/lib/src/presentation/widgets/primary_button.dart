import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.onPress,
    @required this.widthFactor,
    @required this.text,
    this.color,
  }) : super(key: key);

  final VoidCallback onPress;
  final double widthFactor;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          primary: color ?? Theme.of(context).primaryColor,
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
