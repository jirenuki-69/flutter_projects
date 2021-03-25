import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
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
            style: Theme.of(context).textButtonTheme.style.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).scaffoldBackgroundColor,
              ),
              foregroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).errorColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).errorColor,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            child: Text(
                text,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Theme.of(context).errorColor,
                ),
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