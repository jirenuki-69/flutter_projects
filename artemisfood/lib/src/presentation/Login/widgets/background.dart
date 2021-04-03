import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final double containerHeight = height * 0.4;
    final double miniContainerSize = 100.0;
    final titleStyle = Theme.of(context).textTheme.headline4.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: containerHeight,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Positioned(
          top: containerHeight * 0.3,
          right: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Artemis',
                style: titleStyle,
              ),
              Text(
                'Food',
                style: titleStyle,
              ),
            ],
          ),
        ),
        Positioned(
          top: containerHeight - miniContainerSize,
          left: -miniContainerSize * 0.7,
          child: ClipOval(
            child: Container(
              color: Theme.of(context).primaryColor,
              height: miniContainerSize,
              width: miniContainerSize,
            ),
          ),
        ),
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final width = size.width;
    final height = size.height;
    path.lineTo(0, height * 0.55);
    final Offset firsControlPoint = Offset(width * 0.4, height);
    final Offset firstEndingPoint = Offset(width, height * 0.9);
    path.quadraticBezierTo(
      firsControlPoint.dx,
      firsControlPoint.dy,
      firstEndingPoint.dx,
      firstEndingPoint.dy,
    );
    path.lineTo(width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
