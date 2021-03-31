import 'dart:async';

import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:ebodasmovil/screens/ImagenesProveedor/imagenes_proveedor.dart';
import 'package:ebodasmovil/screens/components/error_image.dart';
import 'package:flutter/material.dart';

class SeccionImagenes extends StatefulWidget {
  const SeccionImagenes({
    Key key,
    @required this.proveedor,
  }) : super(key: key);

  final Proveedor proveedor;

  @override
  _SeccionImagenesState createState() => _SeccionImagenesState();
}

class _SeccionImagenesState extends State<SeccionImagenes> {
  PageController _pageController;
  Timer _timer;
  final _duration = const Duration(milliseconds: 200);

  void _changeToPreviousImage() {
    if (_pageController.page == 0) {
      _pageController.animateToPage(
        widget.proveedor.imagenes.length - 1,
        duration: _duration,
        curve: Curves.easeIn,
      );
    } else {
      _pageController.animateToPage(
        (_pageController.page - 1).toInt(),
        duration: _duration,
        curve: Curves.easeIn,
      );
    }
  }

  void _changeToNextImage() {
    if (_pageController.page != widget.proveedor.imagenes.length - 1) {
      _pageController.animateToPage(
        (_pageController.page + 1).toInt(),
        duration: _duration,
        curve: Curves.easeIn,
      );
    } else {
      _pageController.animateToPage(
        0,
        duration: _duration,
        curve: Curves.easeIn,
      );
    }
  }

  void _resetTimer() {
    _timer.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _changeToNextImage();
    });
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _changeToNextImage();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Text(
            'Imágenes',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          height: 210,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  _changeToPreviousImage();
                  _resetTimer();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left_sharp,
                  color: Theme.of(context).iconTheme.color,
                  size: 40,
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.proveedor.imagenes.length,
                  itemBuilder: (context, index) {
                    final String imagen = widget.proveedor.imagenes[index];
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          opaque: true,
                          pageBuilder: (context, animation1, animation2) {
                            return FadeTransition(
                              opacity: animation1,
                              child: ImagenesProveedor(
                                proveedor: widget.proveedor,
                              ),
                            );
                          },
                          transitionDuration: const Duration(
                            milliseconds: 300,
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
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
                    );
                  },
                ),
              ),
              IconButton(
                onPressed: () {
                  _changeToNextImage();
                  _resetTimer();
                },
                icon: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Theme.of(context).iconTheme.color,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
