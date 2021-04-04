import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/presentation/Home/Tabs/Account/GestionCuenta/gestion_cuenta.dart';
import 'package:artemisfood/src/presentation/Home/Tabs/Account/GestionFavoritos/gestion_favoritos.dart';
import 'package:artemisfood/src/presentation/Home/Tabs/Account/Personalization/personalization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_controller.dart';
import 'widgets/main_account_screen.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cuenta',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.currentConfigurationScreen.value,
          children: <Widget>[
            MainAccountScreen(),
            GestionCuentaScreen(),
            GestionFavoritosScreen(),
            PersonalizationScreen(),
          ],
        ),
      ),
    );
  }
}
