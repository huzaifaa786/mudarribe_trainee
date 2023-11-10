// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudarribe_trainee/api/auth_api.dart';
import 'package:mudarribe_trainee/services/user_service.dart';

class SignInController extends GetxController {
  static SignInController instance = Get.find();
  final _authApi = AuthApi();
  final _userService = UserService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool areFieldsFilled = false.obs;
  bool obscureTextPassword = true;

  // Input Toggle button function
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

  // Check all inputs are filled or not
  void checkFields() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      areFieldsFilled.value = true;
    } else {
      areFieldsFilled.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(() {
      checkFields();
    });
    passwordController.addListener(() {
      checkFields();
    });
  }

  // Future signUpTrainee() async {
  //   try {
  //     final User user = await _authApi.signUpWithEmail(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );

  //     if (user.uid.isNotEmpty) {
  //       await _userService.syncOrCreateUser(
  //         user: AppUser(
  //             id: user.uid,
  //             userType: 'trainee',
  //             email: user.email,
  //             name: usernameController.text),
  //       );
  //     }
  //   } on AuthApiException catch (e) {
  //     print(e);
  //   }
  // }
}
