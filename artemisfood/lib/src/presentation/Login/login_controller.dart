import 'package:artemisfood/src/domain/exception/auth_exception.dart';
import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/domain/request/login_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum LoginState {
  initial,
  loading,
}

class LoginController extends GetxController {
  //Login Screen Bussiness Logic
  LoginController({
    this.localRepositoryInterface,
    this.apiRepositoryInterface,
  });

  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  Rx<LoginState> loginState = LoginState.initial.obs;

  Future<bool> login() async {
    final username = usernameTextController.text;
    final password = passwordTextController.text;

    try {
      loginState(LoginState.loading);
      final loginResponse = await apiRepositoryInterface.login(
        LoginRequest(username, password),
      );
      await localRepositoryInterface.saveToken(loginResponse.token);
      await localRepositoryInterface.saveUser(loginResponse.user);

      return true;
    } on AuthException catch (_) {
      loginState(LoginState.initial);
      return false;
    }
  }
}
