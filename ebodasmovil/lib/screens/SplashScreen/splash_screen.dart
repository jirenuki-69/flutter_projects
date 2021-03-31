import 'package:arc_animator/arc_animator.dart';
import 'package:ebodasmovil/constants/const.dart';
import 'package:ebodasmovil/screens/Login/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  static String routeName = '/SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  AnimationController _opacityAnimationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _opacityAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
      lowerBound: 0.0,
      upperBound: 1.0,
    )..addListener(() {
        setState(() {});
      });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _opacityAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageHeight = 200;
    final double imageWidth = size.width * 0.8;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ArcAnimator(
            controller: _animationController,
            begin: Offset(-imageWidth, -imageHeight / 2),
            end: Offset(size.width / 2 - imageWidth / 2,
                size.height / 2 - imageHeight / 2),
            curve: Curves.bounceOut,
            statusListener: (AnimationStatus status) {
              if (status == AnimationStatus.completed) {
                _opacityAnimationController.forward();
                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.of(context).pushNamed(
                    LoginScreen.routeName
                  );
                });
              }
            },
            child: Container(
              height: imageHeight,
              width: imageWidth,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      '$imgPath/LogoNegro.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Siendo guía de tu perfecta boda',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Opacity(
                    opacity: _opacityAnimationController.value,
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
