import 'package:flutter/material.dart';

class ImageLoadingPlaceholder extends StatelessWidget {
  const ImageLoadingPlaceholder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}