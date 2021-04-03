import 'package:artemisfood/src/presentation/SignUp/sign_up_controller.dart';
import 'package:artemisfood/src/presentation/routes/artemisfood_navigation.dart';
import 'package:artemisfood/src/presentation/widgets/custom_text_field.dart';
import 'package:artemisfood/src/presentation/widgets/password_text_field.dart';
import 'package:artemisfood/src/presentation/widgets/primary_button.dart';
import 'package:artemisfood/src/presentation/widgets/row_text_button.dart';
import 'package:artemisfood/src/presentation/widgets/title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key key}) : super(key: key);

  void signUp() async {
    bool res = await controller.signUp();
    if (res) {
      Get.offNamed(ArtemisFoodRoutes.homeScreen);
    } else {
      Get.snackbar(
        'Error',
        'Error al registrarse',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                right: 0,
                child: ClipPath(
                  clipper: FirstCustomClipper(),
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.3,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
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
                  PasswordTextField(
                    controller: controller.passwordTextController,
                    widthFactor: 0.8,
                    spacing: 40.0,
                  ),
                  PrimaryButton(
                    onPress: signUp,
                    widthFactor: 0.6,
                    text: 'Sign up',
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: RowTextButton(
                  onPress: () => Get.offAllNamed(
                    ArtemisFoodRoutes.loginScreen,
                  ),
                  leftText: '¿Ya tienes una cuenta?',
                  rightText: 'Inicia Sesión',
                ),
              ),
              Obx(() {
                if (controller.signUpState.value == SignUpState.initial) {
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
      ),
    );
  }
}

class FirstCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final width = size.width;
    final height = size.height;
    final Offset controlPoint = Offset(width * 0.3, height * 0.9);
    final Offset endingPoint = Offset(width, height);
    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endingPoint.dx,
      endingPoint.dy,
    );
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
