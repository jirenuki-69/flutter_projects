import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountTitle extends StatelessWidget {
  AccountTitle({
    Key key,
  }) : super(key: key);

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final user = homeController.user.value;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            user.name,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(width: 15.0),
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(
              user.image.isEmpty
                  ? 'lib/assets/img/no_user_img.png'
                  : user.image,
            ),
          ),
        ],
      ),
    );
  }
}
