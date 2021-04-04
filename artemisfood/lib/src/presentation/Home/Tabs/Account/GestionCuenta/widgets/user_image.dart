import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserImage extends StatelessWidget {
  UserImage({
    Key key,
  }) : super(key: key);

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final user = homeController.user.value;
    final imageRadius = 40.0;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        bottom: 10.0
      ),
      child: InkWell(
        onTap: () => {},
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: imageRadius,
              backgroundImage: AssetImage(
                user.image.isEmpty
                    ? 'lib/assets/img/no_user_img.png'
                    : user.image,
              ),
            ),
            Positioned(
              bottom: 0,
              right: width / 2 - imageRadius - 10,
              child: CircleAvatar(
                radius: imageRadius / 2,
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}