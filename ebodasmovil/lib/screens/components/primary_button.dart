import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
