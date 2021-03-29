import 'package:ebodasmovil/bloc/ebodas_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitcherMode extends StatelessWidget {
  const SwitcherMode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ebodasBloc = MyInheritedWidget.of(context).ebodasBloc;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.moon_fill,
              color: Theme.of(context).iconTheme.color,
              size: 32,
            ),
            const SizedBox(width: 10),
            Text(
              'Dark Mode',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        Switch(
          value: ebodasBloc.isDarkMode,
          onChanged: (val) => ebodasBloc.changeMode(val),
        ),
      ],
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  MyInheritedWidget({
    @required this.child,
    this.ebodasBloc,
  });

  final Widget child;
  final EbodasBloc ebodasBloc;
  static MyInheritedWidget of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
