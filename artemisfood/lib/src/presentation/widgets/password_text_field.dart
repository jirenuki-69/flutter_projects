import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key key,
    @required this.controller,
    @required this.widthFactor,
    this.spacing = 20.0,
  }) : super(key: key);

  final TextEditingController controller;
  final double widthFactor;
  final double spacing;

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscure = true;

  void _changeVisibility() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widget.widthFactor,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: TextField(
              controller: widget.controller,
              obscureText: obscure,
              decoration: InputDecoration(
                hintText: 'Contaseña',
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.black,
                ),
                suffixIcon: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: _changeVisibility,
                  icon: Icon(
                    obscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: widget.spacing),
        ],
      ),
    );
  }
}
