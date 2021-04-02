import 'package:artemisfood/src/presentation/Login/login_controller.dart';
import 'package:artemisfood/src/presentation/routes/artemisfood_navigation.dart';
import 'package:artemisfood/src/presentation/widgets/custom_text_field.dart';
import 'package:artemisfood/src/presentation/widgets/primary_button.dart';
import 'package:artemisfood/src/presentation/widgets/row_text_button.dart';
import 'package:artemisfood/src/presentation/widgets/title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/background.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key key}) : super(key: key);

  void login() async {
    final res = await controller.login();

    if (res) {
      Get.offNamed(ArtemisFoodRoutes.homeScreen);
    } else {
      Get.snackbar(
        'Error al inciar sesión',
        'No se encuentra ese usuario o contraseña incorrecta',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Background(),
                TitleSubtitle(
                  title: 'Welcome',
                  subtitle: 'Login to continue',
                ),
                CustomTextField(
                  controller: controller.usernameTextController,
                  hintText: 'Username',
                  icon: Icons.person,
                  widthFactor: 0.85,
                ),
                CustomTextField(
                  controller: controller.passwordTextController,
                  hintText: 'Contraseña',
                  icon: Icons.vpn_key,
                  widthFactor: 0.85,
                  spacing: 40.0,
                ),
                PrimaryButton(
                  onPress: login,
                  widthFactor: 0.6,
                  text: 'Login',
                ),
                TextButton(
                  onPressed: () => {},
                  child: Text(
                    '¿Olvidaste tu contraseña?',
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
                RowTextButton(
                  onPress: () => Get.toNamed(
                    ArtemisFoodRoutes.signUpScreen,
                  ),
                  leftText: '¿Nuevo usuario?',
                  rightText: 'Regístrate',
                ),
              ],
            ),
            Obx(() {
              if (controller.loginState.value == LoginState.initial) {
                return SizedBox.shrink();
              }
              return Positioned.fill(
                child: Container(
                  color: Colors.black26,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
