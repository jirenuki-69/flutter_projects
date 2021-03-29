import 'package:flutter/material.dart';

class Seccion extends StatelessWidget {
  const Seccion({
    Key key,
    @required this.title,
    @required this.content,
  }) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  height: 2,
                ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}