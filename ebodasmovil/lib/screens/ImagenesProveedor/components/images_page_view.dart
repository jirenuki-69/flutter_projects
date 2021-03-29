import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/components/error_image.dart';
import 'package:flutter/material.dart';

class ImagesPageView extends StatefulWidget {
  const ImagesPageView({
    Key key,
    @required this.proveedor,
    @required this.statusBarHeight,
    this.notifier,
  }) : super(key: key);

  final Proveedor proveedor;
  final double statusBarHeight;
  final ValueNotifier<double> notifier;

  @override
  _ImagesPageViewState createState() => _ImagesPageViewState();
}

class _ImagesPageViewState extends State<ImagesPageView> {
  PageController _pageController;

  void _onScroll() {
    widget.notifier?.value = _pageController.page;
  }

  @override
  void initState() {
    _pageController = PageController()
      ..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double imageWidth = size.width * 0.8;
    final double imageHeight = size.height * 0.8;
    return Positioned.fill(
      top: widget.statusBarHeight + 45,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.proveedor.imagenes.length,
        itemBuilder: (context, index) {
          final String imagen = widget.proveedor.imagenes[index];
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height / 2 - imageHeight / 2,
              horizontal: size.width / 2 - imageWidth / 2,
            ),
            child: Container(
              width: imageWidth,
              height: imageHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: NetworkImage(imagen),
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: (progress.expectedTotalBytes != null
                            ? (progress.cumulativeBytesLoaded /
                            progress.expectedTotalBytes)
                            : null),
                      ),
                    );
                  },
                  errorBuilder: (_, __, ___) {
                    return ErrorImage();
                  },
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
