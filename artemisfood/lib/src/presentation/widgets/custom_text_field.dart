import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required this.hintText,
    @required this.icon,
    @required this.widthFactor,
    this.spacing = 20.0,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final double widthFactor;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: spacing),
        ],
      ),
    );
  }
}