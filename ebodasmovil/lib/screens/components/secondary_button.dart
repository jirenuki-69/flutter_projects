import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.width,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width,
          height: 45,
          child: TextButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Text(text, style: Theme.of(context).textTheme.subtitle1),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
