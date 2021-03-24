import 'package:flutter/material.dart';

class TextInputPassword extends StatefulWidget {
  final double spacing;

  const TextInputPassword({
    Key key,
    this.spacing = 20,
  }) : super(key: key);

  @override
  _TextInputPasswordState createState() => _TextInputPasswordState();
}

class _TextInputPasswordState extends State<TextInputPassword> {
  bool obscure;

  @override
  void initState() {
    obscure = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: obscure,
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 14,
              ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Theme.of(context).iconTheme.color,
            ),
            suffixIcon: IconButton(
              onPressed: () => setState(() => {
                    obscure = !obscure,
                  }),
              icon: Icon(
                obscure ? Icons.visibility_off_sharp : Icons.visibility_sharp,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            hintText: 'Contraseña',
          ),
        ),
        SizedBox(height: widget.spacing),
      ],
    );
  }
}
