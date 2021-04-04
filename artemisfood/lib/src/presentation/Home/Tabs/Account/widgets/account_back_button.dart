import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../account_controller.dart';

class AccountBackButton extends StatelessWidget {
  AccountBackButton({
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
    return Positioned(
      top: 10,
      left: 0,
      child: BackButton(
        onPressed: () {
          controller.changeConfigurationScreenIndex(0);
        },
      ),
    );
  }
}