import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.onPress,
    @required this.widthFactor,
    @required this.text,
  }) : super(key: key);

  final VoidCallback onPress;
  final double widthFactor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          text,
        ),
      ),
    );
  }
}
