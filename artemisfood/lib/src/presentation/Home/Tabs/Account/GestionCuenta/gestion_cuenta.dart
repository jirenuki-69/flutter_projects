import 'package:artemisfood/src/presentation/Home/Tabs/Account/widgets/account_back_button.dart';
import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:artemisfood/src/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/profile_field.dart';
import 'widgets/user_image.dart';

class GestionCuentaScreen extends StatelessWidget {
  GestionCuentaScreen({
    Key key,
  }) : super(key: key);

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final user = homeController.user.value;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UserImage(),
            ProfileField(
              fieldTitle: 'Nombre',
              fieldContent: user.name,
              onIconPress: () => {},
            ),
            ProfileField(
              fieldTitle: 'Username',
              fieldContent: user.username,
              onIconPress: () => {},
            ),
          ],
        ),
        AccountBackButton(),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Align(
            alignment: Alignment.center,
            child: PrimaryButton(
              onPress: () => {},
              text: 'Eliminar cuenta',
              widthFactor: 0.6,
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }
}
