import 'package:artemisfood/src/infrastructure/data/local_repository_impl.dart';
import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends GetWidget<HomeController> {
  const AccountScreen({Key key}) : super(key: key);

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
      body: Center(
        child: ElevatedButton(
          onPressed: () => LocalRepositoryImpl().clearAllData(),
          child: Text('Clear Token'),
        ),
      ),
    );
  }
}
