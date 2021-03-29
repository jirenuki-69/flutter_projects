import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    @required this.nombre,
    @required this.statusBarHeight,
  }) : super(key: key);

  final String nombre;
  final double statusBarHeight;

  String _capitalize(String text) {
    String cRet = '';
    text.split(' ').forEach((word) {
      cRet += '${word[0].toUpperCase()}${word.substring(1).toLowerCase()} ';
    });
    return cRet.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: statusBarHeight + 45,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.black54,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: Text(
                    _capitalize(nombre),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     IconButton(
        //       onPressed: () => Navigator.pop(context),
        //       icon: Icon(
        //         CupertinoIcons.arrow_left,
        //         size: 24,
        //         color: Colors.white,
        //       ),
        //     ),
        //     const SizedBox(width: 15),
        //     Text(
        //       _capitalize(nombre),
        //       style: Theme.of(context).textTheme.headline6.copyWith(
        //         color: Colors.white,
        //         fontWeight: FontWeight.w700,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
