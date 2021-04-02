import 'package:artemisfood/src/presentation/widgets/custom_text_field.dart';
import 'package:artemisfood/src/presentation/widgets/row_text_button.dart';
import 'package:artemisfood/src/presentation/widgets/title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/background.dart';

class LoginScreen extends GetWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Background(),
            TitleSubtitle(
              title: 'Welcome',
              subtitle: 'Login to continue',
            ),
            const SizedBox(height: 20.0),
            CustomTextField(
              hintText: 'Username',
              icon: Icons.person,
              widthFactor: 0.85,
            ),
            CustomTextField(
              hintText: 'Contraseña',
              icon: Icons.vpn_key,
              widthFactor: 0.85,
              spacing: 40.0,
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text(
                  'Login',
                ),
              ),
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
            RowTextButton(),
          ],
        ),
      ),
    );
  }
}
