import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../account_controller.dart';
import 'account_seccion.dart';
import 'account_title.dart';

class MainAccountScreen extends StatelessWidget {
  MainAccountScreen({
    Key key,
  }) : super(key: key);

  final controller = Get.put(
    AccountController(
      apiRepositoryInterface: Get.find<ApiRepositoryInterface>(),
      localRepositoryInterface: Get.find<LocalRepositoryInterface>(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AccountTitle(),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      AccountSeccion(
                        text: 'Gestionar Cuenta',
                        leadingIcon: Icons.person,
                        onPress: () {
                          controller.changeConfigurationScreenIndex(1);
                        },
                      ),
                      AccountSeccion(
                        text: 'Gestionar Favoritos',
                        leadingIcon: Icons.favorite,
                        onPress: () {
                          controller.changeConfigurationScreenIndex(2);
                        },
                      ),
                      AccountSeccion(
                        text: 'Personalización',
                        leadingIcon: Icons.settings,
                        onPress: () {
                          controller.changeConfigurationScreenIndex(3);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Align(
              alignment: Alignment.center,
              child: PrimaryButton(
                onPress: () => {},
                text: 'Cerrar Sesión',
                widthFactor: 0.6,
                color: Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
