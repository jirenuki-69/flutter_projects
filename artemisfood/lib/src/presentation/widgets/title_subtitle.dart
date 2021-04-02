import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.headline5.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.caption.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
