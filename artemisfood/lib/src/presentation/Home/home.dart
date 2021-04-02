import 'package:artemisfood/src/infrastructure/data/local_repository_impl.dart';
import 'package:artemisfood/src/presentation/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => LocalRepositoryImpl().clearAllData(),
          child: Text('Clear token'),
        ),
      ),
    );
  }
}
