import 'package:ebodasmovil/route_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants/const.dart';
import '../Home/home.dart';
import '../SignUp/sign_up.dart';
import '../components/logo_header.dart';
import '../components/primary_button.dart';
import '../components/text_input.dart';
import '../components/text_input_password.dart';
import 'components/register_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);
  static String routeName = '/Login';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              '$imgPath/Fondo.png',
              fit: BoxFit.cover,
              height: height * 0.45,
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              transform: Matrix4.translationValues(0, -(height * 0.1), 0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: Column(
                  children: [
                    LogoHeader(),
                    TextInput(
                      icon: Icons.person,
                      hintText: 'Correo electrónico',
                      spacing: 30,
                      onSubmit: (val) => {},
                    ),
                    TextInputPassword(
                      spacing: 30,
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      onPressed: () => Navigator.push(
                        context,
                        CustomPageRouteBuilder(
                          page: HomeScreen(),
                          routeName: HomeScreen.routeName,
                        ),
                      ),
                      text: 'Iniciar Sesión',
                      width: width * 0.6,
                    ),
                    RegisterText(
                      onPress: () => Navigator.push(
                        context,
                        CustomPageRouteBuilder(
                          page: SignUpScreen(),
                          routeName: SignUpScreen.routeName,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
