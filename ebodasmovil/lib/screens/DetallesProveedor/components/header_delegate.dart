import 'package:ebodasmovil/screens/components/error_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../models/Proveedor.dart';

class MyPersistenHeaderDelegate implements SliverPersistentHeaderDelegate {
  MyPersistenHeaderDelegate({
    this.minExtent,
    @required this.maxExtent,
    @required this.proveedor,
    @required this.title,
    @required this.titleContainerSize,
  });

  final double minExtent;
  final double maxExtent;
  final double titleContainerSize;
  final Proveedor proveedor;
  final String title;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Hero(
          tag: Key(proveedor.id),
          child: PageView.builder(
            // physics: NeverScrollableScrollPhysics(),
            itemCount: proveedor.imagenes.length,
            itemBuilder: (context, index) {
              final String imagen = proveedor.imagenes[index];
              return Image(
                image: NetworkImage(
                  imagen,
                ),
                loadingBuilder: (context, child, progress) {
                  if (progress != null) {
                    return Center(
                      child: CircularProgressIndicator(
                        value: (progress.expectedTotalBytes != null
                            ? (progress.cumulativeBytesLoaded /
                                progress.expectedTotalBytes)
                            : null),
                      ),
                    );
                  }
                  return child;
                },
                errorBuilder: (_, __, ___) {
                  return ErrorImage();
                },
                fit: BoxFit.cover,
              );
            }
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
              left: 10,
            ),
            height: titleContainerSize,
            color: Colors.black54,
            alignment: Alignment.centerLeft,
            child: Text(
              _capitalize(title),
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
      ],
    );
  }

  String _capitalize(String text) {
    String cRet = '';
    text.split(' ').forEach((word) {
      cRet += "${word[0].toUpperCase()}${word.substring(1).toLowerCase()} ";
    });
    return cRet.trim();
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  @override
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  TickerProvider get vsync => null;
}