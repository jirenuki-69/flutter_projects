import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageRouteBuilder extends PageRouteBuilder {
  final Widget page;
  final Object arguments;
  CustomPageRouteBuilder({
    @required this.page,
    @required String routeName,
    this.arguments,
  }) : super(
        settings: RouteSettings(
          name: routeName,
          arguments: arguments,
        ),
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) =>
            page,
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) =>
            CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: secondaryAnimation,
              child: child,
              linearTransition: true,
          ),
        transitionDuration: const Duration(milliseconds: 300),
      );
}
