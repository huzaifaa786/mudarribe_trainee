import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudarribe_trainee/api/auth_api.dart';
import 'package:mudarribe_trainee/exceptions/auth_api_exception.dart';
import 'package:mudarribe_trainee/models/app_user.dart';
import 'package:mudarribe_trainee/services/user_service.dart';

class SignInController extends GetxController {
  static SignInController instance = Get.find();
  final _authApi = AuthApi();
  final _userService = UserService();

  //
  bool obscureTextPassword = true;
  bool obscureTextCPassword = true;
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

  void toggle1() {
    obscureTextCPassword = !obscureTextCPassword;
    update();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool areFieldsFilled = false.obs;

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
