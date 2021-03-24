import 'package:ebodasmovil/constants/const.dart';
import 'package:ebodasmovil/screens/Home/home.dart';
import 'package:ebodasmovil/screens/Login/components/register_text.dart';
import 'package:ebodasmovil/screens/SignUp/sign_up.dart';
import 'package:ebodasmovil/screens/components/logo_header.dart';
import 'package:ebodasmovil/screens/components/primary_button.dart';
import 'package:ebodasmovil/screens/components/text_input.dart';
import 'package:ebodasmovil/screens/components/text_input_password.dart';
import 'package:ebodasmovil/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

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
              alignment: Alignment.topCenter,
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
                    ),
                    TextInputPassword(
                      spacing: 30,
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      onPressed: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      ),
                      text: 'Iniciar Sesión',
                      width: width * 0.6,
                    ),
                    RegisterText(),
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
