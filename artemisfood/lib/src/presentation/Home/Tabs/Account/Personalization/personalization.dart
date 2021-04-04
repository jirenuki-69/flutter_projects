import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/presentation/Home/Tabs/Account/widgets/account_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../account_controller.dart';

class PersonalizationScreen extends StatelessWidget {
  PersonalizationScreen({
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
    return Stack(
      children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.brightness_medium,
                size: 40.0,
              ),
              Switch(
                value: false,
                onChanged: (val) => {},
              ),
            ],
          ),
        ),
        AccountBackButton(),
      ],
    );
  }
}
