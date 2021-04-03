import 'package:flutter/material.dart';

class ImageErrorPlaceholder extends StatelessWidget {
  const ImageErrorPlaceholder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.image_not_supported,
        ),
        const SizedBox(height: 10.0),
        Text(
          'No image found',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
