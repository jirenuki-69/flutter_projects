import 'package:artemisfood/src/presentation/SignUp/sign_up_controller.dart';
import 'package:artemisfood/src/presentation/routes/artemisfood_navigation.dart';
import 'package:artemisfood/src/presentation/widgets/custom_text_field.dart';
import 'package:artemisfood/src/presentation/widgets/primary_button.dart';
import 'package:artemisfood/src/presentation/widgets/row_text_button.dart';
import 'package:artemisfood/src/presentation/widgets/title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TitleSubtitle(
                title: 'SignUp',
                subtitle: 'Register to continue',
              ),
              CustomTextField(
                controller: controller.usernameTextController,
                hintText: 'Username',
                icon: Icons.person,
                widthFactor: 0.8,
              ),
              CustomTextField(
                controller: controller.passwordTextController,
                hintText: 'password',
                icon: Icons.vpn_key,
                widthFactor: 0.8,
                spacing: 40.0,
              ),
              PrimaryButton(
                onPress: () {},
                widthFactor: 0.6,
                text: 'Sign up',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RowTextButton(
              onPress: () => Get.offNamed(
                ArtemisFoodRoutes.loginScreen,
              ),
              leftText: '¿Ya tienes una cuenta?',
              rightText: 'Inicia Sesión',
            ),
          ),
        ],
      ),
    );
  }
}
