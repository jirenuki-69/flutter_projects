import 'package:artemisfood/src/presentation/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double imageSize = width * 0.7;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Theme.of(context).primaryColor.withOpacity(0.5),
                  Theme.of(context).primaryColor,
                ],
                stops: <double>[0.0, 1],
              ),
            ),
          ),
          Center(
            child: Image.asset(
              '$imgPath/space_dinosaur.png',
              width: imageSize,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
