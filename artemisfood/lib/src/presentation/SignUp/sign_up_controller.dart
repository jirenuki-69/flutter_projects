import 'package:artemisfood/src/domain/exception/sign_up_exception.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
import 'package:artemisfood/src/domain/repositories/sign_up_repository.dart';
import 'package:artemisfood/src/domain/request/sign_up_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SignUpState {
  initial,
  loading,
}

class SignUpController extends GetxController {
  //SignUp Screen Bussiness Logic
  SignUpController({
    this.localRepositoryInterface,
    this.signUpRepositoryInterface,
  });

  final LocalRepositoryInterface localRepositoryInterface;
  final SignUpRepositoryInterface signUpRepositoryInterface;

  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  Rx<SignUpState> signUpState = SignUpState.initial.obs;

  Future<bool> signUp() async {
    final username = usernameTextController.text;
    final password = passwordTextController.text;

    try {
      signUpState(SignUpState.loading);
      final res = await signUpRepositoryInterface.signUp(
        SignUpRequest(
          username: username,
          password: password,
        ),
      );
      await localRepositoryInterface.saveToken(res.token);
      await localRepositoryInterface.saveUser(res.user);

      return true;
    } on SignUpException catch (_) {
      signUpState(SignUpState.initial);
      return false;
    }
  }
}
