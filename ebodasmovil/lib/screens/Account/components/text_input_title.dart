import 'package:ebodasmovil/screens/components/text_input.dart';
import 'package:flutter/material.dart';

class TextInputTitle extends StatelessWidget {
  const TextInputTitle({
    Key key,
    @required this.title,
    @required this.keyboardType,
    @required this.icon,
    @required this.onSubmit,
  }) : super(key: key);

  final String title;
  final TextInputType keyboardType;
  final IconData icon;
  final ValueChanged<String> onSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        TextInput(
          icon: icon,
          hintText: '',
          keyboardType: keyboardType,
          onSubmit: (val) => {},
        ),
      ],
    );
  }
}
