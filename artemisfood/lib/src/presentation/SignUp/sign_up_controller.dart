import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/repositories/local_storage_repository.dart';
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
    this.apiRepositoryInterface,
  });

  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  Rx<SignUpState> signUpState = SignUpState.initial.obs;
}