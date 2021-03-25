import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final double spacing;
  final TextInputType keyboardType;
  final ValueChanged<String> onSubmit;

  const TextInput({
    Key key,
    @required this.icon,
    @required this.hintText,
    @required this.onSubmit,
    this.spacing = 20,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: keyboardType,
          style: Theme.of(context).textTheme.caption.copyWith(
            fontSize: 14,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Theme.of(context).iconTheme.color,
            ),
            hintText: hintText,
          ),
          onSubmitted: onSubmit,
        ),
        SizedBox(height: spacing),
      ],
    );
  }
}
